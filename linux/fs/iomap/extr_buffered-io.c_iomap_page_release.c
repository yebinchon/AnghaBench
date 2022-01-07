
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct iomap_page {int write_count; int read_count; } ;


 int ClearPagePrivate (struct page*) ;
 int WARN_ON_ONCE (int ) ;
 int atomic_read (int *) ;
 int kfree (struct iomap_page*) ;
 int put_page (struct page*) ;
 int set_page_private (struct page*,int ) ;
 struct iomap_page* to_iomap_page (struct page*) ;

__attribute__((used)) static void
iomap_page_release(struct page *page)
{
 struct iomap_page *iop = to_iomap_page(page);

 if (!iop)
  return;
 WARN_ON_ONCE(atomic_read(&iop->read_count));
 WARN_ON_ONCE(atomic_read(&iop->write_count));
 ClearPagePrivate(page);
 set_page_private(page, 0);
 put_page(page);
 kfree(iop);
}
