
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ m_len; } ;
struct mpage_da_data {TYPE_1__ map; int do_map; struct inode* inode; } ;
struct inode {int i_blkbits; } ;
struct buffer_head {int b_page; struct buffer_head* b_this_page; } ;
typedef scalar_t__ ext4_lblk_t ;


 int BUG_ON (int ) ;
 scalar_t__ EXT_MAX_BLOCKS ;
 int buffer_locked (struct buffer_head*) ;
 scalar_t__ ext4_verity_in_progress (struct inode*) ;
 int i_blocksize (struct inode*) ;
 int i_size_read (struct inode*) ;
 int mpage_add_bh_to_extent (struct mpage_da_data*,scalar_t__,struct buffer_head*) ;
 int mpage_submit_page (struct mpage_da_data*,int ) ;

__attribute__((used)) static int mpage_process_page_bufs(struct mpage_da_data *mpd,
       struct buffer_head *head,
       struct buffer_head *bh,
       ext4_lblk_t lblk)
{
 struct inode *inode = mpd->inode;
 int err;
 ext4_lblk_t blocks = (i_size_read(inode) + i_blocksize(inode) - 1)
       >> inode->i_blkbits;

 if (ext4_verity_in_progress(inode))
  blocks = EXT_MAX_BLOCKS;

 do {
  BUG_ON(buffer_locked(bh));

  if (lblk >= blocks || !mpage_add_bh_to_extent(mpd, lblk, bh)) {

   if (mpd->map.m_len)
    return 0;

   if (!mpd->do_map)
    return 0;

   break;
  }
 } while (lblk++, (bh = bh->b_this_page) != head);

 if (mpd->map.m_len == 0) {
  err = mpage_submit_page(mpd, head->b_page);
  if (err < 0)
   return err;
 }
 return lblk < blocks;
}
