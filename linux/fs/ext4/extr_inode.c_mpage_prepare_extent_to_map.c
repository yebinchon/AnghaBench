
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xa_mark_t ;
struct pagevec {struct page** pages; } ;
struct page {scalar_t__ index; struct address_space* mapping; } ;
struct TYPE_6__ {scalar_t__ m_len; } ;
struct mpage_da_data {scalar_t__ first_page; scalar_t__ last_page; scalar_t__ next_page; TYPE_3__ map; TYPE_2__* wbc; TYPE_1__* inode; } ;
struct buffer_head {int dummy; } ;
struct address_space {int dummy; } ;
typedef scalar_t__ pgoff_t ;
typedef int ext4_lblk_t ;
struct TYPE_5__ {long nr_to_write; scalar_t__ sync_mode; scalar_t__ tagged_writepages; } ;
struct TYPE_4__ {int i_blkbits; struct address_space* i_mapping; } ;


 int BUG_ON (scalar_t__) ;
 int PAGECACHE_TAG_DIRTY ;
 int PAGECACHE_TAG_TOWRITE ;
 int PAGE_SHIFT ;
 int PageDirty (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 scalar_t__ WB_SYNC_ALL ;
 scalar_t__ WB_SYNC_NONE ;
 int cond_resched () ;
 int lock_page (struct page*) ;
 int mpage_process_page_bufs (struct mpage_da_data*,struct buffer_head*,struct buffer_head*,int) ;
 struct buffer_head* page_buffers (struct page*) ;
 int pagevec_init (struct pagevec*) ;
 unsigned int pagevec_lookup_range_tag (struct pagevec*,struct address_space*,scalar_t__*,scalar_t__,int ) ;
 int pagevec_release (struct pagevec*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static int mpage_prepare_extent_to_map(struct mpage_da_data *mpd)
{
 struct address_space *mapping = mpd->inode->i_mapping;
 struct pagevec pvec;
 unsigned int nr_pages;
 long left = mpd->wbc->nr_to_write;
 pgoff_t index = mpd->first_page;
 pgoff_t end = mpd->last_page;
 xa_mark_t tag;
 int i, err = 0;
 int blkbits = mpd->inode->i_blkbits;
 ext4_lblk_t lblk;
 struct buffer_head *head;

 if (mpd->wbc->sync_mode == WB_SYNC_ALL || mpd->wbc->tagged_writepages)
  tag = PAGECACHE_TAG_TOWRITE;
 else
  tag = PAGECACHE_TAG_DIRTY;

 pagevec_init(&pvec);
 mpd->map.m_len = 0;
 mpd->next_page = index;
 while (index <= end) {
  nr_pages = pagevec_lookup_range_tag(&pvec, mapping, &index, end,
    tag);
  if (nr_pages == 0)
   goto out;

  for (i = 0; i < nr_pages; i++) {
   struct page *page = pvec.pages[i];
   if (mpd->wbc->sync_mode == WB_SYNC_NONE && left <= 0)
    goto out;


   if (mpd->map.m_len > 0 && mpd->next_page != page->index)
    goto out;

   lock_page(page);







   if (!PageDirty(page) ||
       (PageWriteback(page) &&
        (mpd->wbc->sync_mode == WB_SYNC_NONE)) ||
       unlikely(page->mapping != mapping)) {
    unlock_page(page);
    continue;
   }

   wait_on_page_writeback(page);
   BUG_ON(PageWriteback(page));

   if (mpd->map.m_len == 0)
    mpd->first_page = page->index;
   mpd->next_page = page->index + 1;

   lblk = ((ext4_lblk_t)page->index) <<
    (PAGE_SHIFT - blkbits);
   head = page_buffers(page);
   err = mpage_process_page_bufs(mpd, head, head, lblk);
   if (err <= 0)
    goto out;
   err = 0;
   left--;
  }
  pagevec_release(&pvec);
  cond_resched();
 }
 return 0;
out:
 pagevec_release(&pvec);
 return err;
}
