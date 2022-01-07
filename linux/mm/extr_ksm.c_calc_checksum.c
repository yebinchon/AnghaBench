
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct page {int dummy; } ;


 int PAGE_SIZE ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int xxhash (void*,int ,int ) ;

__attribute__((used)) static u32 calc_checksum(struct page *page)
{
 u32 checksum;
 void *addr = kmap_atomic(page);
 checksum = xxhash(addr, PAGE_SIZE, 0);
 kunmap_atomic(addr);
 return checksum;
}
