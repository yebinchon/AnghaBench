
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct super_block {int dummy; } ;
struct path {int dentry; } ;
struct ovl_fs {scalar_t__ indexdir; int indexdir_trap; struct vfsmount* upper_mnt; } ;
struct ovl_entry {TYPE_1__* lowerstack; } ;
struct TYPE_2__ {int dentry; } ;


 int OVL_INDEXDIR_NAME ;
 int OVL_XATTR_ORIGIN ;
 int mnt_drop_write (struct vfsmount*) ;
 int mnt_want_write (struct vfsmount*) ;
 scalar_t__ ovl_check_origin_xattr (scalar_t__) ;
 int ovl_indexdir_cleanup (struct ovl_fs*) ;
 int ovl_setup_trap (struct super_block*,scalar_t__,int *,char*) ;
 int ovl_verify_origin (int ,int ,int) ;
 int ovl_verify_set_fh (scalar_t__,int ,int ,int,int) ;
 int ovl_verify_upper (scalar_t__,int ,int) ;
 scalar_t__ ovl_workdir_create (struct ovl_fs*,int ,int) ;
 int pr_err (char*) ;
 int pr_warn (char*) ;

__attribute__((used)) static int ovl_get_indexdir(struct super_block *sb, struct ovl_fs *ofs,
       struct ovl_entry *oe, struct path *upperpath)
{
 struct vfsmount *mnt = ofs->upper_mnt;
 int err;

 err = mnt_want_write(mnt);
 if (err)
  return err;


 err = ovl_verify_origin(upperpath->dentry, oe->lowerstack[0].dentry,
    1);
 if (err) {
  pr_err("overlayfs: failed to verify upper root origin\n");
  goto out;
 }

 ofs->indexdir = ovl_workdir_create(ofs, OVL_INDEXDIR_NAME, 1);
 if (ofs->indexdir) {
  err = ovl_setup_trap(sb, ofs->indexdir, &ofs->indexdir_trap,
         "indexdir");
  if (err)
   goto out;
  if (ovl_check_origin_xattr(ofs->indexdir)) {
   err = ovl_verify_set_fh(ofs->indexdir, OVL_XATTR_ORIGIN,
      upperpath->dentry, 1, 0);
   if (err)
    pr_err("overlayfs: failed to verify index dir 'origin' xattr\n");
  }
  err = ovl_verify_upper(ofs->indexdir, upperpath->dentry, 1);
  if (err)
   pr_err("overlayfs: failed to verify index dir 'upper' xattr\n");


  if (!err)
   err = ovl_indexdir_cleanup(ofs);
 }
 if (err || !ofs->indexdir)
  pr_warn("overlayfs: try deleting index dir or mounting with '-o index=off' to disable inodes index.\n");

out:
 mnt_drop_write(mnt);
 return err;
}
