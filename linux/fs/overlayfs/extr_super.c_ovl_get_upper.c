
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {int mnt_flags; int mnt_root; } ;
struct super_block {int dummy; } ;
struct path {int dentry; TYPE_1__* mnt; } ;
struct TYPE_4__ {int upperdir; } ;
struct ovl_fs {int upperdir_locked; struct vfsmount* upper_mnt; int upperdir_trap; TYPE_2__ config; } ;
struct TYPE_3__ {int mnt_sb; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct vfsmount*) ;
 int MNT_NOATIME ;
 int MNT_NODIRATIME ;
 int MNT_RELATIME ;
 int PTR_ERR (struct vfsmount*) ;
 struct vfsmount* clone_private_mount (struct path*) ;
 int ovl_check_namelen (struct path*,struct ovl_fs*,int ) ;
 scalar_t__ ovl_inuse_trylock (int ) ;
 int ovl_mount_dir (int ,struct path*) ;
 int ovl_report_in_use (struct ovl_fs*,char*) ;
 int ovl_setup_trap (struct super_block*,int ,int *,char*) ;
 int pr_err (char*) ;
 scalar_t__ sb_rdonly (int ) ;

__attribute__((used)) static int ovl_get_upper(struct super_block *sb, struct ovl_fs *ofs,
    struct path *upperpath)
{
 struct vfsmount *upper_mnt;
 int err;

 err = ovl_mount_dir(ofs->config.upperdir, upperpath);
 if (err)
  goto out;


 if (sb_rdonly(upperpath->mnt->mnt_sb)) {
  pr_err("overlayfs: upper fs is r/o, try multi-lower layers mount\n");
  err = -EINVAL;
  goto out;
 }

 err = ovl_check_namelen(upperpath, ofs, ofs->config.upperdir);
 if (err)
  goto out;

 err = ovl_setup_trap(sb, upperpath->dentry, &ofs->upperdir_trap,
        "upperdir");
 if (err)
  goto out;

 upper_mnt = clone_private_mount(upperpath);
 err = PTR_ERR(upper_mnt);
 if (IS_ERR(upper_mnt)) {
  pr_err("overlayfs: failed to clone upperpath\n");
  goto out;
 }


 upper_mnt->mnt_flags &= ~(MNT_NOATIME | MNT_NODIRATIME | MNT_RELATIME);
 ofs->upper_mnt = upper_mnt;

 if (ovl_inuse_trylock(ofs->upper_mnt->mnt_root)) {
  ofs->upperdir_locked = 1;
 } else {
  err = ovl_report_in_use(ofs, "upperdir");
  if (err)
   goto out;
 }

 err = 0;
out:
 return err;
}
