
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct page {int dummy; } ;


 int BUG_ON (int ) ;
 int crc32c (int ,char*,unsigned int) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;

__attribute__((used)) static u32 ceph_crc32c_page(u32 crc, struct page *page,
    unsigned int page_offset,
    unsigned int length)
{
 char *kaddr;

 kaddr = kmap(page);
 BUG_ON(kaddr == ((void*)0));
 crc = crc32c(crc, kaddr + page_offset, length);
 kunmap(page);

 return crc;
}
