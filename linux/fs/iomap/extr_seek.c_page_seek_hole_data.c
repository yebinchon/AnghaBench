
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {TYPE_1__* i_mapping; } ;
struct address_space_operations {int (* is_partially_uptodate ) (struct page*,unsigned int,unsigned int) ;} ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {struct address_space_operations* a_ops; } ;


 unsigned int PAGE_SIZE ;
 int PageUptodate (struct page*) ;
 int SEEK_DATA ;
 int SEEK_HOLE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 unsigned int i_blocksize (struct inode*) ;
 int lock_page (struct page*) ;
 unsigned int offset_in_page (scalar_t__) ;
 scalar_t__ page_offset (struct page*) ;
 int stub1 (struct page*,unsigned int,unsigned int) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static bool
page_seek_hole_data(struct inode *inode, struct page *page, loff_t *lastoff,
  int whence)
{
 const struct address_space_operations *ops = inode->i_mapping->a_ops;
 unsigned int bsize = i_blocksize(inode), off;
 bool seek_data = whence == SEEK_DATA;
 loff_t poff = page_offset(page);

 if (WARN_ON_ONCE(*lastoff >= poff + PAGE_SIZE))
  return 0;

 if (*lastoff < poff) {




  if (whence == SEEK_HOLE)
   return 1;
  *lastoff = poff;
 }




 if (bsize == PAGE_SIZE || !ops->is_partially_uptodate)
  return PageUptodate(page) == seek_data;

 lock_page(page);
 if (unlikely(page->mapping != inode->i_mapping))
  goto out_unlock_not_found;

 for (off = 0; off < PAGE_SIZE; off += bsize) {
  if (offset_in_page(*lastoff) >= off + bsize)
   continue;
  if (ops->is_partially_uptodate(page, off, bsize) == seek_data) {
   unlock_page(page);
   return 1;
  }
  *lastoff = poff + off + bsize;
 }

out_unlock_not_found:
 unlock_page(page);
 return 0;
}
