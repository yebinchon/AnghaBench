
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int block_t ;


 int FI_AUTO_RECOVER ;
 int FI_DIRTY_INODE ;
 int dquot_alloc_block_nofail (struct inode*,int ) ;
 int dquot_claim_block (struct inode*,int ) ;
 int dquot_free_block (struct inode*,int ) ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;
 int is_inode_flag_set (struct inode*,int ) ;
 int set_inode_flag (struct inode*,int ) ;

__attribute__((used)) static inline void f2fs_i_blocks_write(struct inode *inode,
     block_t diff, bool add, bool claim)
{
 bool clean = !is_inode_flag_set(inode, FI_DIRTY_INODE);
 bool recover = is_inode_flag_set(inode, FI_AUTO_RECOVER);


 if (add) {
  if (claim)
   dquot_claim_block(inode, diff);
  else
   dquot_alloc_block_nofail(inode, diff);
 } else {
  dquot_free_block(inode, diff);
 }

 f2fs_mark_inode_dirty_sync(inode, 1);
 if (clean || recover)
  set_inode_flag(inode, FI_AUTO_RECOVER);
}
