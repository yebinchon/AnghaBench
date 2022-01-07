
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct iomap_page {int uptodate; int write_count; int read_count; } ;
struct inode {int dummy; } ;


 int GFP_NOFS ;
 int PAGE_SIZE ;
 int SECTOR_SIZE ;
 int SetPagePrivate (struct page*) ;
 int __GFP_NOFAIL ;
 int atomic_set (int *,int ) ;
 int bitmap_zero (int ,int) ;
 int get_page (struct page*) ;
 int i_blocksize (struct inode*) ;
 struct iomap_page* kmalloc (int,int) ;
 int set_page_private (struct page*,unsigned long) ;
 struct iomap_page* to_iomap_page (struct page*) ;

__attribute__((used)) static struct iomap_page *
iomap_page_create(struct inode *inode, struct page *page)
{
 struct iomap_page *iop = to_iomap_page(page);

 if (iop || i_blocksize(inode) == PAGE_SIZE)
  return iop;

 iop = kmalloc(sizeof(*iop), GFP_NOFS | __GFP_NOFAIL);
 atomic_set(&iop->read_count, 0);
 atomic_set(&iop->write_count, 0);
 bitmap_zero(iop->uptodate, PAGE_SIZE / SECTOR_SIZE);





 get_page(page);
 set_page_private(page, (unsigned long)iop);
 SetPagePrivate(page);
 return iop;
}
