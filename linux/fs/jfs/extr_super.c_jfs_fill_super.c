
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int s_quota_types; int s_time_gran; scalar_t__ s_blocksize; int s_maxbytes; int s_root; int * s_d_op; int s_magic; TYPE_1__* s_bdev; int * s_qcop; int * dq_op; int s_xattr; int * s_export_op; int * s_op; int s_flags; int s_time_max; scalar_t__ s_time_min; int s_max_links; struct jfs_sb_info* s_fs_info; } ;
struct jfs_sb_info {int umask; int flag; int mntflag; int nls_tab; struct inode* direct_inode; int * log; int gid; int uid; struct super_block* sb; } ;
struct inode {TYPE_2__* i_mapping; int i_size; scalar_t__ i_ino; } ;
typedef scalar_t__ s64 ;
typedef int loff_t ;
struct TYPE_6__ {int * a_ops; } ;
struct TYPE_5__ {int bd_inode; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GFP_NOFS ;
 int INVALID_GID ;
 int INVALID_UID ;
 scalar_t__ IS_ERR (struct inode*) ;
 int JFS_ERR_REMOUNT_RO ;
 int JFS_LINK_MAX ;
 int JFS_OS2 ;
 int JFS_SUPER_MAGIC ;
 int MAX_LFS_FILESIZE ;
 int PSIZE ;
 int PTR_ERR (struct inode*) ;
 int QTYPE_MASK_GRP ;
 int QTYPE_MASK_USR ;
 int ROOT_I ;
 int SB_POSIXACL ;
 int U32_MAX ;
 int d_make_root (struct inode*) ;
 int dquot_operations ;
 int filemap_write_and_wait (TYPE_2__*) ;
 int i_size_read (int ) ;
 int inode_fake_hash (struct inode*) ;
 int iput (struct inode*) ;
 int jfs_ci_dentry_operations ;
 int jfs_err (char*,...) ;
 int jfs_export_operations ;
 struct inode* jfs_iget (struct super_block*,int ) ;
 int jfs_info (char*,int ) ;
 int jfs_metapage_aops ;
 int jfs_mount (struct super_block*) ;
 int jfs_mount_rw (struct super_block*,int ) ;
 int jfs_quotactl_ops ;
 int jfs_super_operations ;
 int jfs_umount (struct super_block*) ;
 int jfs_xattr_handlers ;
 int kfree (struct jfs_sb_info*) ;
 struct jfs_sb_info* kzalloc (int,int ) ;
 int make_bad_inode (struct inode*) ;
 int mapping_set_gfp_mask (TYPE_2__*,int ) ;
 int min (int,int ) ;
 struct inode* new_inode (struct super_block*) ;
 int parse_options (char*,struct super_block*,scalar_t__*,int*) ;
 int pr_err (char*) ;
 scalar_t__ sb_rdonly (struct super_block*) ;
 int sb_set_blocksize (struct super_block*,int ) ;
 int truncate_inode_pages (TYPE_2__*,int ) ;
 int unload_nls (int ) ;

__attribute__((used)) static int jfs_fill_super(struct super_block *sb, void *data, int silent)
{
 struct jfs_sb_info *sbi;
 struct inode *inode;
 int rc;
 s64 newLVSize = 0;
 int flag, ret = -EINVAL;

 jfs_info("In jfs_read_super: s_flags=0x%lx", sb->s_flags);

 sbi = kzalloc(sizeof(struct jfs_sb_info), GFP_KERNEL);
 if (!sbi)
  return -ENOMEM;

 sb->s_fs_info = sbi;
 sb->s_max_links = JFS_LINK_MAX;
 sb->s_time_min = 0;
 sb->s_time_max = U32_MAX;
 sbi->sb = sb;
 sbi->uid = INVALID_UID;
 sbi->gid = INVALID_GID;
 sbi->umask = -1;


 flag = JFS_ERR_REMOUNT_RO;

 if (!parse_options((char *) data, sb, &newLVSize, &flag))
  goto out_kfree;
 sbi->flag = flag;





 if (newLVSize) {
  pr_err("resize option for remount only\n");
  goto out_kfree;
 }




 sb_set_blocksize(sb, PSIZE);




 sb->s_op = &jfs_super_operations;
 sb->s_export_op = &jfs_export_operations;
 sb->s_xattr = jfs_xattr_handlers;
 inode = new_inode(sb);
 if (inode == ((void*)0)) {
  ret = -ENOMEM;
  goto out_unload;
 }
 inode->i_ino = 0;
 inode->i_size = i_size_read(sb->s_bdev->bd_inode);
 inode->i_mapping->a_ops = &jfs_metapage_aops;
 inode_fake_hash(inode);
 mapping_set_gfp_mask(inode->i_mapping, GFP_NOFS);

 sbi->direct_inode = inode;

 rc = jfs_mount(sb);
 if (rc) {
  if (!silent)
   jfs_err("jfs_mount failed w/return code = %d", rc);
  goto out_mount_failed;
 }
 if (sb_rdonly(sb))
  sbi->log = ((void*)0);
 else {
  rc = jfs_mount_rw(sb, 0);
  if (rc) {
   if (!silent) {
    jfs_err("jfs_mount_rw failed, return code = %d",
     rc);
   }
   goto out_no_rw;
  }
 }

 sb->s_magic = JFS_SUPER_MAGIC;

 if (sbi->mntflag & JFS_OS2)
  sb->s_d_op = &jfs_ci_dentry_operations;

 inode = jfs_iget(sb, ROOT_I);
 if (IS_ERR(inode)) {
  ret = PTR_ERR(inode);
  goto out_no_rw;
 }
 sb->s_root = d_make_root(inode);
 if (!sb->s_root)
  goto out_no_root;




 sb->s_maxbytes = min(((loff_t)sb->s_blocksize) << 40, MAX_LFS_FILESIZE);
 sb->s_time_gran = 1;
 return 0;

out_no_root:
 jfs_err("jfs_read_super: get root dentry failed");

out_no_rw:
 rc = jfs_umount(sb);
 if (rc)
  jfs_err("jfs_umount failed with return code %d", rc);
out_mount_failed:
 filemap_write_and_wait(sbi->direct_inode->i_mapping);
 truncate_inode_pages(sbi->direct_inode->i_mapping, 0);
 make_bad_inode(sbi->direct_inode);
 iput(sbi->direct_inode);
 sbi->direct_inode = ((void*)0);
out_unload:
 unload_nls(sbi->nls_tab);
out_kfree:
 kfree(sbi);
 return ret;
}
