
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct ovl_config {char* redirect_mode; char* upperdir; char* lowerdir; char* workdir; int default_permissions; int index; int nfs_export; int metacopy; int redirect_follow; int redirect_dir; int xino; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_OPT_ARGS ;
 int OVL_XINO_AUTO ;
 int OVL_XINO_OFF ;
 int OVL_XINO_ON ;
 int kfree (char*) ;
 char* kstrdup (int ,int ) ;
 void* match_strdup (int *) ;
 int match_token (char*,int ,int *) ;
 char* ovl_next_opt (char**) ;
 int ovl_parse_redirect_mode (struct ovl_config*,char*) ;
 int ovl_redirect_mode_def () ;
 int ovl_tokens ;
 int pr_err (char*,char*) ;
 int pr_info (char*,char*) ;

__attribute__((used)) static int ovl_parse_opt(char *opt, struct ovl_config *config)
{
 char *p;
 int err;
 bool metacopy_opt = 0, redirect_opt = 0;

 config->redirect_mode = kstrdup(ovl_redirect_mode_def(), GFP_KERNEL);
 if (!config->redirect_mode)
  return -ENOMEM;

 while ((p = ovl_next_opt(&opt)) != ((void*)0)) {
  int token;
  substring_t args[MAX_OPT_ARGS];

  if (!*p)
   continue;

  token = match_token(p, ovl_tokens, args);
  switch (token) {
  case 132:
   kfree(config->upperdir);
   config->upperdir = match_strdup(&args[0]);
   if (!config->upperdir)
    return -ENOMEM;
   break;

  case 138:
   kfree(config->lowerdir);
   config->lowerdir = match_strdup(&args[0]);
   if (!config->lowerdir)
    return -ENOMEM;
   break;

  case 131:
   kfree(config->workdir);
   config->workdir = match_strdup(&args[0]);
   if (!config->workdir)
    return -ENOMEM;
   break;

  case 141:
   config->default_permissions = 1;
   break;

  case 133:
   kfree(config->redirect_mode);
   config->redirect_mode = match_strdup(&args[0]);
   if (!config->redirect_mode)
    return -ENOMEM;
   redirect_opt = 1;
   break;

  case 139:
   config->index = 1;
   break;

  case 140:
   config->index = 0;
   break;

  case 134:
   config->nfs_export = 1;
   break;

  case 135:
   config->nfs_export = 0;
   break;

  case 128:
   config->xino = OVL_XINO_ON;
   break;

  case 129:
   config->xino = OVL_XINO_OFF;
   break;

  case 130:
   config->xino = OVL_XINO_AUTO;
   break;

  case 136:
   config->metacopy = 1;
   metacopy_opt = 1;
   break;

  case 137:
   config->metacopy = 0;
   break;

  default:
   pr_err("overlayfs: unrecognized mount option \"%s\" or missing value\n", p);
   return -EINVAL;
  }
 }


 if (!config->upperdir && config->workdir) {
  pr_info("overlayfs: option \"workdir=%s\" is useless in a non-upper mount, ignore\n",
   config->workdir);
  kfree(config->workdir);
  config->workdir = ((void*)0);
 }

 err = ovl_parse_redirect_mode(config, config->redirect_mode);
 if (err)
  return err;





 if (!config->upperdir && config->redirect_follow)
  config->redirect_dir = 1;


 if (config->metacopy && !config->redirect_dir) {
  if (metacopy_opt && redirect_opt) {
   pr_err("overlayfs: conflicting options: metacopy=on,redirect_dir=%s\n",
          config->redirect_mode);
   return -EINVAL;
  }
  if (redirect_opt) {




   pr_info("overlayfs: disabling metacopy due to redirect_dir=%s\n",
    config->redirect_mode);
   config->metacopy = 0;
  } else {

   config->redirect_follow = config->redirect_dir = 1;
  }
 }

 return 0;
}
