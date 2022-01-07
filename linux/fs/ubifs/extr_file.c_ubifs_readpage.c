
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;


 int do_readpage (struct page*) ;
 scalar_t__ ubifs_bulk_read (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int ubifs_readpage(struct file *file, struct page *page)
{
 if (ubifs_bulk_read(page))
  return 0;
 do_readpage(page);
 unlock_page(page);
 return 0;
}
