(require 'package)
(add-to-list 'package-archives
         '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;;; rhtml-mode
     (add-to-list 'load-path "~/.emacs.d/lisp/rhtml")
     (require 'rhtml-mode)
     (add-hook 'rhtml-mode-hook
	         (lambda () (rinari-launch)))


(add-to-list 'load-path "~/.emacs.d/lisp/scala-mode2/")
(require 'scala-mode2)


(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(add-hook 'scala-mode-hook #'yas-minor-mode)


(add-to-list 'load-path "~/.emacs.d/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
