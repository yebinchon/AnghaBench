
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_mapping; } ;
typedef int gfp_t ;


 int EFBIG ;
 int ENOMEM ;
 unsigned int MAX_ORDER ;
 size_t PAGE_SHIFT ;
 size_t PAGE_SIZE ;
 int SetPageDirty (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int __free_page (struct page*) ;
 int add_to_page_cache_lru (struct page*,int ,unsigned long,int ) ;
 struct page* alloc_pages (int ,unsigned int) ;
 unsigned int get_order (size_t) ;
 int i_size_write (struct inode*,size_t) ;
 int inode_newsize_ok (struct inode*,size_t) ;
 int mapping_gfp_mask (int ) ;
 int memset (void*,int ,size_t) ;
 void* page_address (struct page*) ;
 int put_page (struct page*) ;
 int split_page (struct page*,unsigned int) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

int ramfs_nommu_expand_for_mapping(struct inode *inode, size_t newsize)
{
 unsigned long npages, xpages, loop;
 struct page *pages;
 unsigned order;
 void *data;
 int ret;
 gfp_t gfp = mapping_gfp_mask(inode->i_mapping);


 order = get_order(newsize);
 if (unlikely(order >= MAX_ORDER))
  return -EFBIG;

 ret = inode_newsize_ok(inode, newsize);
 if (ret)
  return ret;

 i_size_write(inode, newsize);



 pages = alloc_pages(gfp, order);
 if (!pages)
  return -ENOMEM;


 xpages = 1UL << order;
 npages = (newsize + PAGE_SIZE - 1) >> PAGE_SHIFT;

 split_page(pages, order);


 for (loop = npages; loop < xpages; loop++)
  __free_page(pages + loop);


 newsize = PAGE_SIZE * npages;
 data = page_address(pages);
 memset(data, 0, newsize);


 for (loop = 0; loop < npages; loop++) {
  struct page *page = pages + loop;

  ret = add_to_page_cache_lru(page, inode->i_mapping, loop,
     gfp);
  if (ret < 0)
   goto add_error;


  SetPageDirty(page);
  SetPageUptodate(page);

  unlock_page(page);
  put_page(page);
 }

 return 0;

add_error:
 while (loop < npages)
  __free_page(pages + loop++);
 return ret;
}
