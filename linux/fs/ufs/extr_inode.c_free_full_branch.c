
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ufs_sb_private_info {unsigned int s_apb; int s_fpb; int s_bsize; } ;
struct ufs_buffer_head {int dummy; } ;
struct to_free {struct inode* inode; } ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;


 TYPE_1__* UFS_SB (struct super_block*) ;
 int free_data (struct to_free*,scalar_t__,int ) ;
 int ubh_bforget (struct ufs_buffer_head*) ;
 struct ufs_buffer_head* ubh_bread (struct super_block*,scalar_t__,int ) ;
 void* ubh_get_data_ptr (struct ufs_sb_private_info*,struct ufs_buffer_head*,unsigned int) ;
 scalar_t__ ufs_data_ptr_to_cpu (struct super_block*,void*) ;
 int ufs_free_blocks (struct inode*,scalar_t__,int ) ;

__attribute__((used)) static void free_full_branch(struct inode *inode, u64 ind_block, int depth)
{
 struct super_block *sb = inode->i_sb;
 struct ufs_sb_private_info *uspi = UFS_SB(sb)->s_uspi;
 struct ufs_buffer_head *ubh = ubh_bread(sb, ind_block, uspi->s_bsize);
 unsigned i;

 if (!ubh)
  return;

 if (--depth) {
  for (i = 0; i < uspi->s_apb; i++) {
   void *p = ubh_get_data_ptr(uspi, ubh, i);
   u64 block = ufs_data_ptr_to_cpu(sb, p);
   if (block)
    free_full_branch(inode, block, depth);
  }
 } else {
  struct to_free ctx = {.inode = inode};

  for (i = 0; i < uspi->s_apb; i++) {
   void *p = ubh_get_data_ptr(uspi, ubh, i);
   u64 block = ufs_data_ptr_to_cpu(sb, p);
   if (block)
    free_data(&ctx, block, uspi->s_fpb);
  }
  free_data(&ctx, 0, 0);
 }

 ubh_bforget(ubh);
 ufs_free_blocks(inode, ind_block, uspi->s_fpb);
}
