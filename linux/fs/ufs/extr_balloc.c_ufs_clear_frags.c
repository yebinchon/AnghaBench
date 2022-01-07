
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {int b_data; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {int s_blocksize; } ;


 scalar_t__ IS_SYNC (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int memset (int ,int ,int ) ;
 struct buffer_head* sb_getblk (TYPE_1__*,scalar_t__) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int sync_dirty_buffer (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static void ufs_clear_frags(struct inode *inode, sector_t beg, unsigned int n,
       int sync)
{
 struct buffer_head *bh;
 sector_t end = beg + n;

 for (; beg < end; ++beg) {
  bh = sb_getblk(inode->i_sb, beg);
  lock_buffer(bh);
  memset(bh->b_data, 0, inode->i_sb->s_blocksize);
  set_buffer_uptodate(bh);
  mark_buffer_dirty(bh);
  unlock_buffer(bh);
  if (IS_SYNC(inode) || sync)
   sync_dirty_buffer(bh);
  brelse(bh);
 }
}
