
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dentry; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 scalar_t__ ovl_dentry_remote (int ) ;
 int ovl_mount_dir_noesc (char*,struct path*) ;
 int ovl_unescape (char*) ;
 int path_put_init (struct path*) ;
 int pr_err (char*,char*) ;

__attribute__((used)) static int ovl_mount_dir(const char *name, struct path *path)
{
 int err = -ENOMEM;
 char *tmp = kstrdup(name, GFP_KERNEL);

 if (tmp) {
  ovl_unescape(tmp);
  err = ovl_mount_dir_noesc(tmp, path);

  if (!err)
   if (ovl_dentry_remote(path->dentry)) {
    pr_err("overlayfs: filesystem on '%s' not supported as upperdir\n",
           tmp);
    path_put_init(path);
    err = -EINVAL;
   }
  kfree(tmp);
 }
 return err;
}
