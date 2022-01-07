
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_info {scalar_t__ blk_addr; } ;
struct inode {int i_ino; } ;
struct f2fs_sb_info {int dummy; } ;


 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int FI_FREE_NID ;
 scalar_t__ NULL_ADDR ;
 int SBI_NEED_FSCK ;
 int clear_nlink (struct inode*) ;
 int f2fs_acquire_orphan_inode (struct f2fs_sb_info*) ;
 int f2fs_add_orphan_inode (struct inode*) ;
 int f2fs_alloc_nid_done (struct f2fs_sb_info*,int ) ;
 int f2fs_get_node_info (struct f2fs_sb_info*,int ,struct node_info*) ;
 int f2fs_inode_synced (struct inode*) ;
 int f2fs_unlock_op (struct f2fs_sb_info*) ;
 int f2fs_update_inode_page (struct inode*) ;
 int f2fs_warn (struct f2fs_sb_info*,char*) ;
 int iput (struct inode*) ;
 int set_inode_flag (struct inode*,int ) ;
 int set_sbi_flag (struct f2fs_sb_info*,int ) ;
 int unlock_new_inode (struct inode*) ;

void f2fs_handle_failed_inode(struct inode *inode)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct node_info ni;
 int err;





 clear_nlink(inode);





 f2fs_update_inode_page(inode);
 f2fs_inode_synced(inode);


 unlock_new_inode(inode);






 err = f2fs_get_node_info(sbi, inode->i_ino, &ni);
 if (err) {
  set_sbi_flag(sbi, SBI_NEED_FSCK);
  f2fs_warn(sbi, "May loss orphan inode, run fsck to fix.");
  goto out;
 }

 if (ni.blk_addr != NULL_ADDR) {
  err = f2fs_acquire_orphan_inode(sbi);
  if (err) {
   set_sbi_flag(sbi, SBI_NEED_FSCK);
   f2fs_warn(sbi, "Too many orphan inodes, run fsck to fix.");
  } else {
   f2fs_add_orphan_inode(inode);
  }
  f2fs_alloc_nid_done(sbi, inode->i_ino);
 } else {
  set_inode_flag(inode, FI_FREE_NID);
 }

out:
 f2fs_unlock_op(sbi);


 iput(inode);
}
