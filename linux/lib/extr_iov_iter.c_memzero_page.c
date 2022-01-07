
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 char* kmap_atomic (struct page*) ;
 int kunmap_atomic (char*) ;
 int memset (char*,int ,size_t) ;

__attribute__((used)) static void memzero_page(struct page *page, size_t offset, size_t len)
{
 char *addr = kmap_atomic(page);
 memset(addr + offset, 0, len);
 kunmap_atomic(addr);
}
