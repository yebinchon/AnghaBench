
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; int b_size; } ;
typedef void* block_t ;
struct TYPE_3__ {void* key; struct buffer_head* bh; void** p; } ;
typedef TYPE_1__ Indirect ;


 int ENOSPC ;
 int bforget (struct buffer_head*) ;
 int block_to_cpu (void*) ;
 void* cpu_to_block (int) ;
 int lock_buffer (struct buffer_head*) ;
 int mark_buffer_dirty_inode (struct buffer_head*,struct inode*) ;
 int memset (scalar_t__,int ,int ) ;
 int minix_free_block (struct inode*,int ) ;
 int minix_new_block (struct inode*) ;
 struct buffer_head* sb_getblk (int ,int) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static int alloc_branch(struct inode *inode,
        int num,
        int *offsets,
        Indirect *branch)
{
 int n = 0;
 int i;
 int parent = minix_new_block(inode);

 branch[0].key = cpu_to_block(parent);
 if (parent) for (n = 1; n < num; n++) {
  struct buffer_head *bh;

  int nr = minix_new_block(inode);
  if (!nr)
   break;
  branch[n].key = cpu_to_block(nr);
  bh = sb_getblk(inode->i_sb, parent);
  lock_buffer(bh);
  memset(bh->b_data, 0, bh->b_size);
  branch[n].bh = bh;
  branch[n].p = (block_t*) bh->b_data + offsets[n];
  *branch[n].p = branch[n].key;
  set_buffer_uptodate(bh);
  unlock_buffer(bh);
  mark_buffer_dirty_inode(bh, inode);
  parent = nr;
 }
 if (n == num)
  return 0;


 for (i = 1; i < n; i++)
  bforget(branch[i].bh);
 for (i = 0; i < n; i++)
  minix_free_block(inode, block_to_cpu(branch[i].key));
 return -ENOSPC;
}
