
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef scalar_t__ block_t ;


 int bforget (struct buffer_head*) ;
 scalar_t__* block_end (struct buffer_head*) ;
 unsigned long block_to_cpu (scalar_t__) ;
 int free_data (struct inode*,scalar_t__*,scalar_t__*) ;
 int mark_inode_dirty (struct inode*) ;
 int minix_free_block (struct inode*,unsigned long) ;
 struct buffer_head* sb_bread (int ,unsigned long) ;

__attribute__((used)) static void free_branches(struct inode *inode, block_t *p, block_t *q, int depth)
{
 struct buffer_head * bh;
 unsigned long nr;

 if (depth--) {
  for ( ; p < q ; p++) {
   nr = block_to_cpu(*p);
   if (!nr)
    continue;
   *p = 0;
   bh = sb_bread(inode->i_sb, nr);
   if (!bh)
    continue;
   free_branches(inode, (block_t*)bh->b_data,
          block_end(bh), depth);
   bforget(bh);
   minix_free_block(inode, nr);
   mark_inode_dirty(inode);
  }
 } else
  free_data(inode, p, q);
}
