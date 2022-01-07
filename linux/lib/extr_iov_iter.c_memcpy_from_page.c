
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 char* kmap_atomic (struct page*) ;
 int kunmap_atomic (char*) ;
 int memcpy (char*,char*,size_t) ;

__attribute__((used)) static void memcpy_from_page(char *to, struct page *page, size_t offset, size_t len)
{
 char *from = kmap_atomic(page);
 memcpy(to, from + offset, len);
 kunmap_atomic(from);
}
