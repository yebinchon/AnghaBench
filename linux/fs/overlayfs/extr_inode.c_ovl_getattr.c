
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct path {scalar_t__ dentry; } ;
struct ovl_layer {int dummy; } ;
struct kstat {int nlink; int blocks; int ino; } ;
struct dentry {TYPE_1__* d_inode; int d_sb; } ;
struct cred {int dummy; } ;
typedef enum ovl_path_type { ____Placeholder_ovl_path_type } ovl_path_type ;
struct TYPE_2__ {int i_nlink; int i_mode; } ;


 int OVL_INDEX ;
 scalar_t__ OVL_TYPE_MERGE (int) ;
 scalar_t__ OVL_TYPE_ORIGIN (int) ;
 int OVL_TYPE_UPPER (int) ;
 int STATX_BLOCKS ;
 int STATX_INO ;
 int STATX_NLINK ;
 int S_ISDIR (int ) ;
 int d_inode (struct dentry*) ;
 scalar_t__ ovl_dentry_lowerdata (struct dentry*) ;
 int ovl_is_metacopy_dentry (struct dentry*) ;
 struct ovl_layer* ovl_layer_lower (struct dentry*) ;
 int ovl_map_dev_ino (struct dentry*,struct kstat*,struct ovl_layer*) ;
 struct cred* ovl_override_creds (int ) ;
 int ovl_path_lower (struct dentry*,struct path*) ;
 int ovl_path_lowerdata (struct dentry*,struct path*) ;
 int ovl_path_real (struct dentry*,struct path*) ;
 int ovl_same_sb (int ) ;
 scalar_t__ ovl_test_flag (int ,int ) ;
 int ovl_verify_lower (int ) ;
 scalar_t__ ovl_xino_bits (int ) ;
 int revert_creds (struct cred const*) ;
 int vfs_getattr (struct path*,struct kstat*,int,unsigned int) ;

int ovl_getattr(const struct path *path, struct kstat *stat,
  u32 request_mask, unsigned int flags)
{
 struct dentry *dentry = path->dentry;
 enum ovl_path_type type;
 struct path realpath;
 const struct cred *old_cred;
 bool is_dir = S_ISDIR(dentry->d_inode->i_mode);
 bool samefs = ovl_same_sb(dentry->d_sb);
 struct ovl_layer *lower_layer = ((void*)0);
 int err;
 bool metacopy_blocks = 0;

 metacopy_blocks = ovl_is_metacopy_dentry(dentry);

 type = ovl_path_real(dentry, &realpath);
 old_cred = ovl_override_creds(dentry->d_sb);
 err = vfs_getattr(&realpath, stat, request_mask, flags);
 if (err)
  goto out;
 if (!is_dir || samefs || ovl_xino_bits(dentry->d_sb)) {
  if (!OVL_TYPE_UPPER(type)) {
   lower_layer = ovl_layer_lower(dentry);
  } else if (OVL_TYPE_ORIGIN(type)) {
   struct kstat lowerstat;
   u32 lowermask = STATX_INO | STATX_BLOCKS |
     (!is_dir ? STATX_NLINK : 0);

   ovl_path_lower(dentry, &realpath);
   err = vfs_getattr(&realpath, &lowerstat,
       lowermask, flags);
   if (err)
    goto out;
   if (ovl_test_flag(OVL_INDEX, d_inode(dentry)) ||
       (!ovl_verify_lower(dentry->d_sb) &&
        (is_dir || lowerstat.nlink == 1))) {
    stat->ino = lowerstat.ino;
    lower_layer = ovl_layer_lower(dentry);
   }
   if (metacopy_blocks &&
       realpath.dentry == ovl_dentry_lowerdata(dentry)) {
    stat->blocks = lowerstat.blocks;
    metacopy_blocks = 0;
   }
  }

  if (metacopy_blocks) {




   struct kstat lowerdatastat;
   u32 lowermask = STATX_BLOCKS;

   ovl_path_lowerdata(dentry, &realpath);
   err = vfs_getattr(&realpath, &lowerdatastat,
       lowermask, flags);
   if (err)
    goto out;
   stat->blocks = lowerdatastat.blocks;
  }
 }

 err = ovl_map_dev_ino(dentry, stat, lower_layer);
 if (err)
  goto out;






 if (is_dir && OVL_TYPE_MERGE(type))
  stat->nlink = 1;







 if (!is_dir && ovl_test_flag(OVL_INDEX, d_inode(dentry)))
  stat->nlink = dentry->d_inode->i_nlink;

out:
 revert_creds(old_cred);

 return err;
}
