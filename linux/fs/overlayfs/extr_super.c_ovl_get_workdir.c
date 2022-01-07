
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct path {scalar_t__ mnt; int dentry; } ;
struct TYPE_2__ {int workdir; } ;
struct ovl_fs {int workdir_locked; int workbasedir_trap; int workbasedir; TYPE_1__ config; } ;


 int EINVAL ;
 int dget (int ) ;
 scalar_t__ ovl_inuse_trylock (int ) ;
 int ovl_make_workdir (struct super_block*,struct ovl_fs*,struct path*) ;
 int ovl_mount_dir (int ,struct path*) ;
 int ovl_report_in_use (struct ovl_fs*,char*) ;
 int ovl_setup_trap (struct super_block*,int ,int *,char*) ;
 int ovl_workdir_ok (int ,int ) ;
 int path_put (struct path*) ;
 int pr_err (char*) ;

__attribute__((used)) static int ovl_get_workdir(struct super_block *sb, struct ovl_fs *ofs,
      struct path *upperpath)
{
 int err;
 struct path workpath = { };

 err = ovl_mount_dir(ofs->config.workdir, &workpath);
 if (err)
  goto out;

 err = -EINVAL;
 if (upperpath->mnt != workpath.mnt) {
  pr_err("overlayfs: workdir and upperdir must reside under the same mount\n");
  goto out;
 }
 if (!ovl_workdir_ok(workpath.dentry, upperpath->dentry)) {
  pr_err("overlayfs: workdir and upperdir must be separate subtrees\n");
  goto out;
 }

 ofs->workbasedir = dget(workpath.dentry);

 if (ovl_inuse_trylock(ofs->workbasedir)) {
  ofs->workdir_locked = 1;
 } else {
  err = ovl_report_in_use(ofs, "workdir");
  if (err)
   goto out;
 }

 err = ovl_setup_trap(sb, ofs->workbasedir, &ofs->workbasedir_trap,
        "workdir");
 if (err)
  goto out;

 err = ovl_make_workdir(sb, ofs, &workpath);

out:
 path_put(&workpath);

 return err;
}
