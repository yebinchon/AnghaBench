
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dentry; } ;


 int EINVAL ;
 int LOOKUP_FOLLOW ;
 int d_is_dir (int ) ;
 int kern_path (char const*,int ,struct path*) ;
 scalar_t__ ovl_dentry_weird (int ) ;
 int path_put_init (struct path*) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int ovl_mount_dir_noesc(const char *name, struct path *path)
{
 int err = -EINVAL;

 if (!*name) {
  pr_err("overlayfs: empty lowerdir\n");
  goto out;
 }
 err = kern_path(name, LOOKUP_FOLLOW, path);
 if (err) {
  pr_err("overlayfs: failed to resolve '%s': %i\n", name, err);
  goto out;
 }
 err = -EINVAL;
 if (ovl_dentry_weird(path->dentry)) {
  pr_err("overlayfs: filesystem on '%s' not supported\n", name);
  goto out_put;
 }
 if (!d_is_dir(path->dentry)) {
  pr_err("overlayfs: '%s' not a directory\n", name);
  goto out_put;
 }
 return 0;

out_put:
 path_put_init(path);
out:
 return err;
}
