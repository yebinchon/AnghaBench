
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {unsigned long index; int lru; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int i_pages; struct inode* host; } ;
typedef unsigned long pgoff_t ;
typedef int loff_t ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 int LIST_HEAD (int ) ;
 int PAGE_SHIFT ;
 int SetPageReadahead (struct page*) ;
 struct page* __page_cache_alloc (int ) ;
 int i_size_read (struct inode*) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int page_pool ;
 int read_pages (struct address_space*,struct file*,int *,unsigned int,int ) ;
 int readahead_gfp_mask (struct address_space*) ;
 int xa_is_value (struct page*) ;
 struct page* xa_load (int *,unsigned long) ;

unsigned int __do_page_cache_readahead(struct address_space *mapping,
  struct file *filp, pgoff_t offset, unsigned long nr_to_read,
  unsigned long lookahead_size)
{
 struct inode *inode = mapping->host;
 struct page *page;
 unsigned long end_index;
 LIST_HEAD(page_pool);
 int page_idx;
 unsigned int nr_pages = 0;
 loff_t isize = i_size_read(inode);
 gfp_t gfp_mask = readahead_gfp_mask(mapping);

 if (isize == 0)
  goto out;

 end_index = ((isize - 1) >> PAGE_SHIFT);




 for (page_idx = 0; page_idx < nr_to_read; page_idx++) {
  pgoff_t page_offset = offset + page_idx;

  if (page_offset > end_index)
   break;

  page = xa_load(&mapping->i_pages, page_offset);
  if (page && !xa_is_value(page)) {





   if (nr_pages)
    read_pages(mapping, filp, &page_pool, nr_pages,
      gfp_mask);
   nr_pages = 0;
   continue;
  }

  page = __page_cache_alloc(gfp_mask);
  if (!page)
   break;
  page->index = page_offset;
  list_add(&page->lru, &page_pool);
  if (page_idx == nr_to_read - lookahead_size)
   SetPageReadahead(page);
  nr_pages++;
 }






 if (nr_pages)
  read_pages(mapping, filp, &page_pool, nr_pages, gfp_mask);
 BUG_ON(!list_empty(&page_pool));
out:
 return nr_pages;
}
