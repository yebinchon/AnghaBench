
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_ino; int i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; TYPE_2__* b_page; } ;
struct TYPE_4__ {TYPE_1__* mapping; } ;
struct TYPE_3__ {struct inode* host; } ;


 int EEXIST ;
 int EIO ;
 int KERN_ERR ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_nilfs_node (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int clear_buffer_uptodate (struct buffer_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 scalar_t__ nilfs_btree_broken_node_block (struct buffer_head*) ;
 int nilfs_msg (int ,int ,char*,char*,int ,unsigned long long) ;
 int wait_on_buffer (struct buffer_head*) ;

int nilfs_gccache_wait_and_mark_dirty(struct buffer_head *bh)
{
 wait_on_buffer(bh);
 if (!buffer_uptodate(bh)) {
  struct inode *inode = bh->b_page->mapping->host;

  nilfs_msg(inode->i_sb, KERN_ERR,
     "I/O error reading %s block for GC (ino=%lu, vblocknr=%llu)",
     buffer_nilfs_node(bh) ? "node" : "data",
     inode->i_ino, (unsigned long long)bh->b_blocknr);
  return -EIO;
 }
 if (buffer_dirty(bh))
  return -EEXIST;

 if (buffer_nilfs_node(bh) && nilfs_btree_broken_node_block(bh)) {
  clear_buffer_uptodate(bh);
  return -EIO;
 }
 mark_buffer_dirty(bh);
 return 0;
}
