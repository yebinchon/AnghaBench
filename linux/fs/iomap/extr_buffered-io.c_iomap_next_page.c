
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct page {int index; int lru; } ;
struct list_head {int dummy; } ;
struct inode {int i_mapping; } ;
typedef scalar_t__ loff_t ;


 int GFP_NOFS ;
 scalar_t__ PAGE_SIZE ;
 int add_to_page_cache_lru (struct page*,int ,int ,int ) ;
 int list_del (int *) ;
 int list_empty (struct list_head*) ;
 struct page* lru_to_page (struct list_head*) ;
 scalar_t__ page_offset (struct page*) ;
 int put_page (struct page*) ;

__attribute__((used)) static struct page *
iomap_next_page(struct inode *inode, struct list_head *pages, loff_t pos,
  loff_t length, loff_t *done)
{
 while (!list_empty(pages)) {
  struct page *page = lru_to_page(pages);

  if (page_offset(page) >= (u64)pos + length)
   break;

  list_del(&page->lru);
  if (!add_to_page_cache_lru(page, inode->i_mapping, page->index,
    GFP_NOFS))
   return page;







  *done += PAGE_SIZE;
  put_page(page);
 }

 return ((void*)0);
}
