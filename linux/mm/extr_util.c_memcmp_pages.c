
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PAGE_SIZE ;
 char* kmap_atomic (struct page*) ;
 int kunmap_atomic (char*) ;
 int memcmp (char*,char*,int ) ;

int memcmp_pages(struct page *page1, struct page *page2)
{
 char *addr1, *addr2;
 int ret;

 addr1 = kmap_atomic(page1);
 addr2 = kmap_atomic(page2);
 ret = memcmp(addr1, addr2, PAGE_SIZE);
 kunmap_atomic(addr2);
 kunmap_atomic(addr1);
 return ret;
}
