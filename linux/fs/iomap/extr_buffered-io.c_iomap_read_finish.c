
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct iomap_page {int read_count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void
iomap_read_finish(struct iomap_page *iop, struct page *page)
{
 if (!iop || atomic_dec_and_test(&iop->read_count))
  unlock_page(page);
}
