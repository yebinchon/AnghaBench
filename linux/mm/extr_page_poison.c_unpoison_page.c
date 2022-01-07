
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PAGE_SIZE ;
 int check_poison_mem (void*,int ) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;

__attribute__((used)) static void unpoison_page(struct page *page)
{
 void *addr;

 addr = kmap_atomic(page);





 check_poison_mem(addr, PAGE_SIZE);
 kunmap_atomic(addr);
}
