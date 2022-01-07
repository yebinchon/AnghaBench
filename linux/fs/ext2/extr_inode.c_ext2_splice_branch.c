
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_ctime; } ;
struct ext2_block_alloc_info {long last_alloc_logical_block; void* last_alloc_physical_block; } ;
typedef void* ext2_fsblk_t ;
struct TYPE_5__ {struct ext2_block_alloc_info* i_block_alloc_info; } ;
struct TYPE_4__ {scalar_t__ bh; int key; int * p; } ;
typedef TYPE_1__ Indirect ;


 TYPE_3__* EXT2_I (struct inode*) ;
 int cpu_to_le32 (int ) ;
 int current_time (struct inode*) ;
 void* le32_to_cpu (int ) ;
 int mark_buffer_dirty_inode (scalar_t__,struct inode*) ;
 int mark_inode_dirty (struct inode*) ;

__attribute__((used)) static void ext2_splice_branch(struct inode *inode,
   long block, Indirect *where, int num, int blks)
{
 int i;
 struct ext2_block_alloc_info *block_i;
 ext2_fsblk_t current_block;

 block_i = EXT2_I(inode)->i_block_alloc_info;




 *where->p = where->key;





 if (num == 0 && blks > 1) {
  current_block = le32_to_cpu(where->key) + 1;
  for (i = 1; i < blks; i++)
   *(where->p + i ) = cpu_to_le32(current_block++);
 }






 if (block_i) {
  block_i->last_alloc_logical_block = block + blks - 1;
  block_i->last_alloc_physical_block =
    le32_to_cpu(where[num].key) + blks - 1;
 }




 if (where->bh)
  mark_buffer_dirty_inode(where->bh, inode);

 inode->i_ctime = current_time(inode);
 mark_inode_dirty(inode);
}
