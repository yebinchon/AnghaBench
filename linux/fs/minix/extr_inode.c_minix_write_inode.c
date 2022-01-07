
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {scalar_t__ sync_mode; } ;
struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int s_id; } ;


 int EIO ;
 scalar_t__ INODE_VERSION (struct inode*) ;
 scalar_t__ MINIX_V1 ;
 struct buffer_head* V1_minix_update_inode (struct inode*) ;
 struct buffer_head* V2_minix_update_inode (struct inode*) ;
 scalar_t__ WB_SYNC_ALL ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_req (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int printk (char*,int ,int ) ;
 int sync_dirty_buffer (struct buffer_head*) ;

__attribute__((used)) static int minix_write_inode(struct inode *inode, struct writeback_control *wbc)
{
 int err = 0;
 struct buffer_head *bh;

 if (INODE_VERSION(inode) == MINIX_V1)
  bh = V1_minix_update_inode(inode);
 else
  bh = V2_minix_update_inode(inode);
 if (!bh)
  return -EIO;
 if (wbc->sync_mode == WB_SYNC_ALL && buffer_dirty(bh)) {
  sync_dirty_buffer(bh);
  if (buffer_req(bh) && !buffer_uptodate(bh)) {
   printk("IO error syncing minix inode [%s:%08lx]\n",
    inode->i_sb->s_id, inode->i_ino);
   err = -EIO;
  }
 }
 brelse (bh);
 return err;
}
