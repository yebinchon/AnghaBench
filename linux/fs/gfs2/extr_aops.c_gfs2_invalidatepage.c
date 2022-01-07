
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct gfs2_sbd {int dummy; } ;
struct buffer_head {unsigned long b_size; struct buffer_head* b_this_page; } ;
struct TYPE_2__ {int host; } ;


 int BUG_ON (int) ;
 int ClearPageChecked (struct page*) ;
 struct gfs2_sbd* GFS2_SB (int ) ;
 unsigned int PAGE_SIZE ;
 int PageLocked (struct page*) ;
 int gfs2_discard (struct gfs2_sbd*,struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;
 int try_to_release_page (struct page*,int ) ;

__attribute__((used)) static void gfs2_invalidatepage(struct page *page, unsigned int offset,
    unsigned int length)
{
 struct gfs2_sbd *sdp = GFS2_SB(page->mapping->host);
 unsigned int stop = offset + length;
 int partial_page = (offset || length < PAGE_SIZE);
 struct buffer_head *bh, *head;
 unsigned long pos = 0;

 BUG_ON(!PageLocked(page));
 if (!partial_page)
  ClearPageChecked(page);
 if (!page_has_buffers(page))
  goto out;

 bh = head = page_buffers(page);
 do {
  if (pos + bh->b_size > stop)
   return;

  if (offset <= pos)
   gfs2_discard(sdp, bh);
  pos += bh->b_size;
  bh = bh->b_this_page;
 } while (bh != head);
out:
 if (!partial_page)
  try_to_release_page(page, 0);
}
