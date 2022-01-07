
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ufs_sb_private_info {unsigned int s_apb; int s_fpb; } ;
struct ufs_buffer_head {int dummy; } ;
struct to_free {struct inode* inode; } ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct TYPE_4__ {int meta_lock; } ;
struct TYPE_3__ {struct ufs_sb_private_info* s_uspi; } ;


 scalar_t__ IS_SYNC (struct inode*) ;
 TYPE_2__* UFS_I (struct inode*) ;
 TYPE_1__* UFS_SB (struct super_block*) ;
 int free_data (struct to_free*,scalar_t__,int ) ;
 int free_full_branch (struct inode*,scalar_t__,int) ;
 int ubh_brelse (struct ufs_buffer_head*) ;
 scalar_t__ ubh_buffer_dirty (struct ufs_buffer_head*) ;
 void* ubh_get_data_ptr (struct ufs_sb_private_info*,struct ufs_buffer_head*,unsigned int) ;
 int ubh_mark_buffer_dirty (struct ufs_buffer_head*) ;
 int ubh_sync_block (struct ufs_buffer_head*) ;
 int ufs_data_ptr_clear (struct ufs_sb_private_info*,void*) ;
 scalar_t__ ufs_data_ptr_to_cpu (struct super_block*,void*) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

__attribute__((used)) static void free_branch_tail(struct inode *inode, unsigned from, struct ufs_buffer_head *ubh, int depth)
{
 struct super_block *sb = inode->i_sb;
 struct ufs_sb_private_info *uspi = UFS_SB(sb)->s_uspi;
 unsigned i;

 if (--depth) {
  for (i = from; i < uspi->s_apb ; i++) {
   void *p = ubh_get_data_ptr(uspi, ubh, i);
   u64 block = ufs_data_ptr_to_cpu(sb, p);
   if (block) {
    write_seqlock(&UFS_I(inode)->meta_lock);
    ufs_data_ptr_clear(uspi, p);
    write_sequnlock(&UFS_I(inode)->meta_lock);
    ubh_mark_buffer_dirty(ubh);
    free_full_branch(inode, block, depth);
   }
  }
 } else {
  struct to_free ctx = {.inode = inode};

  for (i = from; i < uspi->s_apb; i++) {
   void *p = ubh_get_data_ptr(uspi, ubh, i);
   u64 block = ufs_data_ptr_to_cpu(sb, p);
   if (block) {
    write_seqlock(&UFS_I(inode)->meta_lock);
    ufs_data_ptr_clear(uspi, p);
    write_sequnlock(&UFS_I(inode)->meta_lock);
    ubh_mark_buffer_dirty(ubh);
    free_data(&ctx, block, uspi->s_fpb);
   }
  }
  free_data(&ctx, 0, 0);
 }
 if (IS_SYNC(inode) && ubh_buffer_dirty(ubh))
  ubh_sync_block(ubh);
 ubh_brelse(ubh);
}
