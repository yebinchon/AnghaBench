
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PAGE_SIZE ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memcpy (char*,char*,int ) ;

__attribute__((used)) static inline void f2fs_copy_page(struct page *src, struct page *dst)
{
 char *src_kaddr = kmap(src);
 char *dst_kaddr = kmap(dst);

 memcpy(dst_kaddr, src_kaddr, PAGE_SIZE);
 kunmap(dst);
 kunmap(src);
}
