
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct squashfs_cache_entry {int dummy; } ;
struct page {int dummy; } ;


 scalar_t__ PAGE_SIZE ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int flush_dcache_page (struct page*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int memset (void*,int ,scalar_t__) ;
 int squashfs_copy_data (void*,struct squashfs_cache_entry*,int,int) ;

void squashfs_fill_page(struct page *page, struct squashfs_cache_entry *buffer, int offset, int avail)
{
 int copied;
 void *pageaddr;

 pageaddr = kmap_atomic(page);
 copied = squashfs_copy_data(pageaddr, buffer, offset, avail);
 memset(pageaddr + copied, 0, PAGE_SIZE - copied);
 kunmap_atomic(pageaddr);

 flush_dcache_page(page);
 if (copied == avail)
  SetPageUptodate(page);
 else
  SetPageError(page);
}
