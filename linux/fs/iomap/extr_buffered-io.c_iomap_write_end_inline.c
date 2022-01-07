
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct iomap {unsigned int inline_data; } ;
struct inode {int dummy; } ;
typedef unsigned int loff_t ;


 int BUG_ON (int) ;
 unsigned int PAGE_SIZE ;
 int PageUptodate (struct page*) ;
 int WARN_ON_ONCE (int) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int mark_inode_dirty (struct inode*) ;
 int memcpy (unsigned int,void*,unsigned int) ;
 unsigned int offset_in_page (unsigned int) ;

__attribute__((used)) static int
iomap_write_end_inline(struct inode *inode, struct page *page,
  struct iomap *iomap, loff_t pos, unsigned copied)
{
 void *addr;

 WARN_ON_ONCE(!PageUptodate(page));
 BUG_ON(pos + copied > PAGE_SIZE - offset_in_page(iomap->inline_data));

 addr = kmap_atomic(page);
 memcpy(iomap->inline_data + pos, addr + pos, copied);
 kunmap_atomic(addr);

 mark_inode_dirty(inode);
 return copied;
}
