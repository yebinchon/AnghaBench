
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;

__attribute__((used)) static int zswap_is_page_same_filled(void *ptr, unsigned long *value)
{
 unsigned int pos;
 unsigned long *page;

 page = (unsigned long *)ptr;
 for (pos = 1; pos < PAGE_SIZE / sizeof(*page); pos++) {
  if (page[pos] != page[0])
   return 0;
 }
 *value = page[0];
 return 1;
}
