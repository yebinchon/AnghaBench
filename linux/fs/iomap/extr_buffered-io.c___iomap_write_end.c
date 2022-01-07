
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct iomap {int dummy; } ;
struct inode {int dummy; } ;
typedef int loff_t ;


 int PageUptodate (struct page*) ;
 int flush_dcache_page (struct page*) ;
 int iomap_set_page_dirty (struct page*) ;
 int iomap_set_range_uptodate (struct page*,int ,unsigned int) ;
 int offset_in_page (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
__iomap_write_end(struct inode *inode, loff_t pos, unsigned len,
  unsigned copied, struct page *page, struct iomap *iomap)
{
 flush_dcache_page(page);
 if (unlikely(copied < len && !PageUptodate(page)))
  return 0;
 iomap_set_range_uptodate(page, offset_in_page(pos), len);
 iomap_set_page_dirty(page);
 return copied;
}
