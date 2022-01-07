
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {int b_blocknr; int b_state; struct page* b_page; } ;


 int BH_Async_Write ;
 int BH_Dirty ;
 int BH_Mapped ;
 int BH_NILFS_Checked ;
 int BH_NILFS_Redirected ;
 int BH_NILFS_Volatile ;
 int BH_Uptodate ;
 unsigned long BIT (int ) ;
 int ClearPageMappedToDisk (struct page*) ;
 int ClearPageUptodate (struct page*) ;
 int __nilfs_clear_page_dirty (struct page*) ;
 int brelse (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 scalar_t__ nilfs_page_buffers_clean (struct page*) ;
 int set_mask_bits (int *,unsigned long const,int ) ;
 int unlock_buffer (struct buffer_head*) ;

void nilfs_forget_buffer(struct buffer_head *bh)
{
 struct page *page = bh->b_page;
 const unsigned long clear_bits =
  (BIT(BH_Uptodate) | BIT(BH_Dirty) | BIT(BH_Mapped) |
   BIT(BH_Async_Write) | BIT(BH_NILFS_Volatile) |
   BIT(BH_NILFS_Checked) | BIT(BH_NILFS_Redirected));

 lock_buffer(bh);
 set_mask_bits(&bh->b_state, clear_bits, 0);
 if (nilfs_page_buffers_clean(page))
  __nilfs_clear_page_dirty(page);

 bh->b_blocknr = -1;
 ClearPageUptodate(page);
 ClearPageMappedToDisk(page);
 unlock_buffer(bh);
 brelse(bh);
}
