
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 char* kmap_atomic (struct page*) ;
 int kunmap_atomic (char*) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static void memcpy_to_page(struct page *page, size_t offset, const char *from, size_t len)
{
 char *to = kmap_atomic(page);
 memcpy(to + offset, from, len);
 kunmap_atomic(to);
}
