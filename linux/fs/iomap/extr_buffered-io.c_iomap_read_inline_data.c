
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int index; } ;
struct iomap {int inline_data; } ;
struct inode {int dummy; } ;


 int BUG_ON (int) ;
 size_t PAGE_SIZE ;
 scalar_t__ PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 size_t i_size_read (struct inode*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int memcpy (void*,int ,size_t) ;
 int memset (void*,int ,size_t) ;
 size_t offset_in_page (int ) ;

__attribute__((used)) static void
iomap_read_inline_data(struct inode *inode, struct page *page,
  struct iomap *iomap)
{
 size_t size = i_size_read(inode);
 void *addr;

 if (PageUptodate(page))
  return;

 BUG_ON(page->index);
 BUG_ON(size > PAGE_SIZE - offset_in_page(iomap->inline_data));

 addr = kmap_atomic(page);
 memcpy(addr, iomap->inline_data, size);
 memset(addr + size, 0, PAGE_SIZE - size);
 kunmap_atomic(addr);
 SetPageUptodate(page);
}
