
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ sync_mode; scalar_t__ nr_to_write; } ;
struct pagevec {struct page** pages; } ;
struct page {scalar_t__ index; struct address_space* mapping; } ;
struct inode {int i_blkbits; } ;
struct gfs2_sbd {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef scalar_t__ pgoff_t ;


 int AOP_WRITEPAGE_ACTIVATE ;
 int BUG_ON (scalar_t__) ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 int PAGE_SIZE ;
 int PageDirty (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 scalar_t__ WB_SYNC_NONE ;
 int __gfs2_jdata_writepage (struct page*,struct writeback_control*) ;
 int clear_page_dirty_for_io (struct page*) ;
 int gfs2_trans_begin (struct gfs2_sbd*,unsigned int,unsigned int) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;
 int inode_to_bdi (struct inode*) ;
 int lock_page (struct page*) ;
 int trace_wbc_writepage (struct writeback_control*,int ) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static int gfs2_write_jdata_pagevec(struct address_space *mapping,
        struct writeback_control *wbc,
        struct pagevec *pvec,
        int nr_pages,
        pgoff_t *done_index)
{
 struct inode *inode = mapping->host;
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 unsigned nrblocks = nr_pages * (PAGE_SIZE >> inode->i_blkbits);
 int i;
 int ret;

 ret = gfs2_trans_begin(sdp, nrblocks, nrblocks);
 if (ret < 0)
  return ret;

 for(i = 0; i < nr_pages; i++) {
  struct page *page = pvec->pages[i];

  *done_index = page->index;

  lock_page(page);

  if (unlikely(page->mapping != mapping)) {
continue_unlock:
   unlock_page(page);
   continue;
  }

  if (!PageDirty(page)) {

   goto continue_unlock;
  }

  if (PageWriteback(page)) {
   if (wbc->sync_mode != WB_SYNC_NONE)
    wait_on_page_writeback(page);
   else
    goto continue_unlock;
  }

  BUG_ON(PageWriteback(page));
  if (!clear_page_dirty_for_io(page))
   goto continue_unlock;

  trace_wbc_writepage(wbc, inode_to_bdi(inode));

  ret = __gfs2_jdata_writepage(page, wbc);
  if (unlikely(ret)) {
   if (ret == AOP_WRITEPAGE_ACTIVATE) {
    unlock_page(page);
    ret = 0;
   } else {
    *done_index = page->index + 1;
    ret = 1;
    break;
   }
  }







  if (--wbc->nr_to_write <= 0 && wbc->sync_mode == WB_SYNC_NONE) {
   ret = 1;
   break;
  }

 }
 gfs2_trans_end(sdp);
 return ret;
}
