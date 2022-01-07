
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int loff_t ;
typedef int get_block_t ;


 int ENOMEM ;
 int PAGE_SHIFT ;
 int __block_write_begin (struct page*,int,unsigned int,int *) ;
 struct page* grab_cache_page_write_begin (struct address_space*,int,unsigned int) ;
 int put_page (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

int block_write_begin(struct address_space *mapping, loff_t pos, unsigned len,
  unsigned flags, struct page **pagep, get_block_t *get_block)
{
 pgoff_t index = pos >> PAGE_SHIFT;
 struct page *page;
 int status;

 page = grab_cache_page_write_begin(mapping, index, flags);
 if (!page)
  return -ENOMEM;

 status = __block_write_begin(page, pos, len, get_block);
 if (unlikely(status)) {
  unlock_page(page);
  put_page(page);
  page = ((void*)0);
 }

 *pagep = page;
 return status;
}
