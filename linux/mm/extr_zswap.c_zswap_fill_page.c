
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int memset_l (unsigned long*,unsigned long,int) ;

__attribute__((used)) static void zswap_fill_page(void *ptr, unsigned long value)
{
 unsigned long *page;

 page = (unsigned long *)ptr;
 memset_l(page, value, PAGE_SIZE / sizeof(unsigned long));
}
