
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_ino; int i_state; int i_count; int i_lock; int i_sb; int i_mapping; int i_nlink; } ;
struct f2fs_sb_info {int dummy; } ;


 int DATA ;
 scalar_t__ F2FS_HAS_BLOCKS (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ F2FS_META_INO (struct f2fs_sb_info*) ;
 scalar_t__ F2FS_NODE_INO (struct f2fs_sb_info*) ;
 int I_SYNC ;
 int SBI_CP_DISABLED ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int f2fs_destroy_extent_node (struct inode*) ;
 int f2fs_drop_inmem_pages (struct inode*) ;
 int f2fs_i_size_write (struct inode*,int ) ;
 scalar_t__ f2fs_is_atomic_file (struct inode*) ;
 int f2fs_submit_merged_write_cond (struct f2fs_sb_info*,struct inode*,int *,int ,int ) ;
 int f2fs_truncate (struct inode*) ;
 int fscrypt_drop_inode (struct inode*) ;
 int generic_drop_inode (struct inode*) ;
 int inode_unhashed (struct inode*) ;
 int is_bad_inode (struct inode*) ;
 int is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 int sb_end_intwrite (int ) ;
 int sb_start_intwrite (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_f2fs_drop_inode (struct inode*,int) ;
 int truncate_inode_pages_final (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int f2fs_drop_inode(struct inode *inode)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 int ret;





 if (unlikely(is_sbi_flag_set(sbi, SBI_CP_DISABLED))) {
  if (inode->i_ino == F2FS_NODE_INO(sbi) ||
   inode->i_ino == F2FS_META_INO(sbi)) {
   trace_f2fs_drop_inode(inode, 1);
   return 1;
  }
 }
 if ((!inode_unhashed(inode) && inode->i_state & I_SYNC)) {
  if (!inode->i_nlink && !is_bad_inode(inode)) {

   atomic_inc(&inode->i_count);
   spin_unlock(&inode->i_lock);


   if (f2fs_is_atomic_file(inode))
    f2fs_drop_inmem_pages(inode);


   f2fs_destroy_extent_node(inode);

   sb_start_intwrite(inode->i_sb);
   f2fs_i_size_write(inode, 0);

   f2fs_submit_merged_write_cond(F2FS_I_SB(inode),
     inode, ((void*)0), 0, DATA);
   truncate_inode_pages_final(inode->i_mapping);

   if (F2FS_HAS_BLOCKS(inode))
    f2fs_truncate(inode);

   sb_end_intwrite(inode->i_sb);

   spin_lock(&inode->i_lock);
   atomic_dec(&inode->i_count);
  }
  trace_f2fs_drop_inode(inode, 0);
  return 0;
 }
 ret = generic_drop_inode(inode);
 if (!ret)
  ret = fscrypt_drop_inode(inode);
 trace_f2fs_drop_inode(inode, ret);
 return ret;
}
