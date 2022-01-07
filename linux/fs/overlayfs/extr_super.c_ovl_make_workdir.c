
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct super_block {int dummy; } ;
struct path {int dummy; } ;
struct TYPE_7__ {int index; int metacopy; int nfs_export; } ;
struct ovl_fs {int tmpfile; int noxattr; TYPE_1__ config; scalar_t__ xino_bits; TYPE_2__* workdir; int workdir_trap; struct vfsmount* upper_mnt; } ;
struct dentry {int dummy; } ;
struct TYPE_8__ {int d_sb; } ;


 int FILEID_INO32_GEN ;
 int IS_ERR (struct dentry*) ;
 int OVL_WORKDIR_NAME ;
 int OVL_XATTR_OPAQUE ;
 int S_IFREG ;
 int dput (struct dentry*) ;
 int mnt_drop_write (struct vfsmount*) ;
 int mnt_want_write (struct vfsmount*) ;
 int ovl_can_decode_fh (int ) ;
 int ovl_check_d_type_supported (struct path*) ;
 int ovl_do_setxattr (TYPE_2__*,int ,char*,int,int ) ;
 struct dentry* ovl_do_tmpfile (TYPE_2__*,int) ;
 int ovl_setup_trap (struct super_block*,TYPE_2__*,int *,char*) ;
 TYPE_2__* ovl_workdir_create (struct ovl_fs*,int ,int) ;
 int pr_warn (char*) ;
 int vfs_removexattr (TYPE_2__*,int ) ;

__attribute__((used)) static int ovl_make_workdir(struct super_block *sb, struct ovl_fs *ofs,
       struct path *workpath)
{
 struct vfsmount *mnt = ofs->upper_mnt;
 struct dentry *temp;
 int fh_type;
 int err;

 err = mnt_want_write(mnt);
 if (err)
  return err;

 ofs->workdir = ovl_workdir_create(ofs, OVL_WORKDIR_NAME, 0);
 if (!ofs->workdir)
  goto out;

 err = ovl_setup_trap(sb, ofs->workdir, &ofs->workdir_trap, "workdir");
 if (err)
  goto out;







 err = ovl_check_d_type_supported(workpath);
 if (err < 0)
  goto out;





 if (!err)
  pr_warn("overlayfs: upper fs needs to support d_type.\n");


 temp = ovl_do_tmpfile(ofs->workdir, S_IFREG | 0);
 ofs->tmpfile = !IS_ERR(temp);
 if (ofs->tmpfile)
  dput(temp);
 else
  pr_warn("overlayfs: upper fs does not support tmpfile.\n");




 err = ovl_do_setxattr(ofs->workdir, OVL_XATTR_OPAQUE, "0", 1, 0);
 if (err) {
  ofs->noxattr = 1;
  ofs->config.index = 0;
  ofs->config.metacopy = 0;
  pr_warn("overlayfs: upper fs does not support xattr, falling back to index=off and metacopy=off.\n");
  err = 0;
 } else {
  vfs_removexattr(ofs->workdir, OVL_XATTR_OPAQUE);
 }


 fh_type = ovl_can_decode_fh(ofs->workdir->d_sb);
 if (ofs->config.index && !fh_type) {
  ofs->config.index = 0;
  pr_warn("overlayfs: upper fs does not support file handles, falling back to index=off.\n");
 }


 if (fh_type != FILEID_INO32_GEN)
  ofs->xino_bits = 0;


 if (ofs->config.nfs_export && !ofs->config.index) {
  pr_warn("overlayfs: NFS export requires \"index=on\", falling back to nfs_export=off.\n");
  ofs->config.nfs_export = 0;
 }
out:
 mnt_drop_write(mnt);
 return err;
}
