
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;


 int BUG_ON (int) ;
 int PageLocked (struct page*) ;
 int __udf_adinicb_readpage (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int udf_adinicb_readpage(struct file *file, struct page *page)
{
 BUG_ON(!PageLocked(page));
 __udf_adinicb_readpage(page);
 unlock_page(page);

 return 0;
}
