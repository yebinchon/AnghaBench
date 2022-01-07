
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pagevec {struct page** pages; } ;
struct page {int dummy; } ;
struct TYPE_6__ {int m_lblk; int m_len; scalar_t__ m_flags; int m_pblk; } ;
struct TYPE_5__ {TYPE_1__* io_end; } ;
struct mpage_da_data {TYPE_3__ map; TYPE_2__ io_submit; struct inode* inode; } ;
struct inode {int i_blkbits; int i_mapping; } ;
struct buffer_head {scalar_t__ b_blocknr; struct buffer_head* b_this_page; } ;
typedef int sector_t ;
typedef int pgoff_t ;
typedef int ext4_lblk_t ;
struct TYPE_4__ {int size; } ;


 int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ buffer_delay (struct buffer_head*) ;
 int clear_buffer_delay (struct buffer_head*) ;
 int clear_buffer_unwritten (struct buffer_head*) ;
 int mpage_process_page_bufs (struct mpage_da_data*,struct buffer_head*,struct buffer_head*,int) ;
 int mpage_submit_page (struct mpage_da_data*,struct page*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int pagevec_init (struct pagevec*) ;
 int pagevec_lookup_range (struct pagevec*,int ,int*,int) ;
 int pagevec_release (struct pagevec*) ;

__attribute__((used)) static int mpage_map_and_submit_buffers(struct mpage_da_data *mpd)
{
 struct pagevec pvec;
 int nr_pages, i;
 struct inode *inode = mpd->inode;
 struct buffer_head *head, *bh;
 int bpp_bits = PAGE_SHIFT - inode->i_blkbits;
 pgoff_t start, end;
 ext4_lblk_t lblk;
 sector_t pblock;
 int err;

 start = mpd->map.m_lblk >> bpp_bits;
 end = (mpd->map.m_lblk + mpd->map.m_len - 1) >> bpp_bits;
 lblk = start << bpp_bits;
 pblock = mpd->map.m_pblk;

 pagevec_init(&pvec);
 while (start <= end) {
  nr_pages = pagevec_lookup_range(&pvec, inode->i_mapping,
      &start, end);
  if (nr_pages == 0)
   break;
  for (i = 0; i < nr_pages; i++) {
   struct page *page = pvec.pages[i];

   bh = head = page_buffers(page);
   do {
    if (lblk < mpd->map.m_lblk)
     continue;
    if (lblk >= mpd->map.m_lblk + mpd->map.m_len) {




     mpd->map.m_len = 0;
     mpd->map.m_flags = 0;







     err = mpage_process_page_bufs(mpd, head,
              bh, lblk);
     pagevec_release(&pvec);
     if (err > 0)
      err = 0;
     return err;
    }
    if (buffer_delay(bh)) {
     clear_buffer_delay(bh);
     bh->b_blocknr = pblock++;
    }
    clear_buffer_unwritten(bh);
   } while (lblk++, (bh = bh->b_this_page) != head);






   mpd->io_submit.io_end->size += PAGE_SIZE;

   err = mpage_submit_page(mpd, page);
   if (err < 0) {
    pagevec_release(&pvec);
    return err;
   }
  }
  pagevec_release(&pvec);
 }

 mpd->map.m_len = 0;
 mpd->map.m_flags = 0;
 return 0;
}
