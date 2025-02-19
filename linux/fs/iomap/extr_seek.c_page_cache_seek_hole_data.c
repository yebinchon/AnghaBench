
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {struct page** pages; } ;
struct page {int dummy; } ;
struct inode {int i_mapping; } ;
typedef scalar_t__ pgoff_t ;
typedef scalar_t__ loff_t ;


 scalar_t__ DIV_ROUND_UP (scalar_t__,scalar_t__) ;
 scalar_t__ ENOENT ;
 scalar_t__ PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int SEEK_HOLE ;
 scalar_t__ page_offset (struct page*) ;
 scalar_t__ page_seek_hole_data (struct inode*,struct page*,scalar_t__*,int) ;
 int pagevec_init (struct pagevec*) ;
 unsigned int pagevec_lookup_range (struct pagevec*,int ,scalar_t__*,scalar_t__) ;
 int pagevec_release (struct pagevec*) ;

__attribute__((used)) static loff_t
page_cache_seek_hole_data(struct inode *inode, loff_t offset, loff_t length,
  int whence)
{
 pgoff_t index = offset >> PAGE_SHIFT;
 pgoff_t end = DIV_ROUND_UP(offset + length, PAGE_SIZE);
 loff_t lastoff = offset;
 struct pagevec pvec;

 if (length <= 0)
  return -ENOENT;

 pagevec_init(&pvec);

 do {
  unsigned nr_pages, i;

  nr_pages = pagevec_lookup_range(&pvec, inode->i_mapping, &index,
      end - 1);
  if (nr_pages == 0)
   break;

  for (i = 0; i < nr_pages; i++) {
   struct page *page = pvec.pages[i];

   if (page_seek_hole_data(inode, page, &lastoff, whence))
    goto check_range;
   lastoff = page_offset(page) + PAGE_SIZE;
  }
  pagevec_release(&pvec);
 } while (index < end);


 if (whence != SEEK_HOLE)
  goto not_found;

check_range:
 if (lastoff < offset + length)
  goto out;
not_found:
 lastoff = -ENOENT;
out:
 pagevec_release(&pvec);
 return lastoff;
}
