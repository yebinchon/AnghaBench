
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_config {int redirect_dir; int redirect_follow; } ;


 int EINVAL ;
 scalar_t__ ovl_redirect_always_follow ;
 int pr_err (char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int ovl_parse_redirect_mode(struct ovl_config *config, const char *mode)
{
 if (strcmp(mode, "on") == 0) {
  config->redirect_dir = 1;




  config->redirect_follow = 1;
 } else if (strcmp(mode, "follow") == 0) {
  config->redirect_follow = 1;
 } else if (strcmp(mode, "off") == 0) {
  if (ovl_redirect_always_follow)
   config->redirect_follow = 1;
 } else if (strcmp(mode, "nofollow") != 0) {
  pr_err("overlayfs: bad mount option \"redirect_dir=%s\"\n",
         mode);
  return -EINVAL;
 }

 return 0;
}
