
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_allocation_request {unsigned long len; unsigned int flags; int goal; struct inode* inode; } ;
typedef int handle_t ;
typedef int ext4_fsblk_t ;
typedef int ar ;


 int EXT4_C2B (int ,unsigned long) ;
 unsigned int EXT4_MB_DELALLOC_RESERVED ;
 int EXT4_SB (int ) ;
 int dquot_alloc_block_nofail (struct inode*,int ) ;
 int ext4_mb_new_blocks (int *,struct ext4_allocation_request*,int*) ;
 int memset (struct ext4_allocation_request*,int ,int) ;

ext4_fsblk_t ext4_new_meta_blocks(handle_t *handle, struct inode *inode,
      ext4_fsblk_t goal, unsigned int flags,
      unsigned long *count, int *errp)
{
 struct ext4_allocation_request ar;
 ext4_fsblk_t ret;

 memset(&ar, 0, sizeof(ar));

 ar.inode = inode;
 ar.goal = goal;
 ar.len = count ? *count : 1;
 ar.flags = flags;

 ret = ext4_mb_new_blocks(handle, &ar, errp);
 if (count)
  *count = ar.len;




 if (!(*errp) && (flags & EXT4_MB_DELALLOC_RESERVED)) {
  dquot_alloc_block_nofail(inode,
    EXT4_C2B(EXT4_SB(inode->i_sb), ar.len));
 }
 return ret;
}
