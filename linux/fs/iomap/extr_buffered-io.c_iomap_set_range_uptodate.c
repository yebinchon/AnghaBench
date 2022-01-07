
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct iomap_page {int uptodate; } ;
struct inode {unsigned int i_blkbits; } ;
struct TYPE_2__ {struct inode* host; } ;


 unsigned int PAGE_SIZE ;
 int PageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 unsigned int i_blocksize (struct inode*) ;
 int set_bit (unsigned int,int ) ;
 int test_bit (unsigned int,int ) ;
 struct iomap_page* to_iomap_page (struct page*) ;

__attribute__((used)) static void
iomap_set_range_uptodate(struct page *page, unsigned off, unsigned len)
{
 struct iomap_page *iop = to_iomap_page(page);
 struct inode *inode = page->mapping->host;
 unsigned first = off >> inode->i_blkbits;
 unsigned last = (off + len - 1) >> inode->i_blkbits;
 unsigned int i;
 bool uptodate = 1;

 if (iop) {
  for (i = 0; i < PAGE_SIZE / i_blocksize(inode); i++) {
   if (i >= first && i <= last)
    set_bit(i, iop->uptodate);
   else if (!test_bit(i, iop->uptodate))
    uptodate = 0;
  }
 }

 if (uptodate && !PageError(page))
  SetPageUptodate(page);
}
