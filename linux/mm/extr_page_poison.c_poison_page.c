
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PAGE_POISON ;
 int PAGE_SIZE ;
 int kasan_disable_current () ;
 int kasan_enable_current () ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int memset (void*,int ,int ) ;

__attribute__((used)) static void poison_page(struct page *page)
{
 void *addr = kmap_atomic(page);


 kasan_disable_current();
 memset(addr, PAGE_POISON, PAGE_SIZE);
 kasan_enable_current();
 kunmap_atomic(addr);
}
