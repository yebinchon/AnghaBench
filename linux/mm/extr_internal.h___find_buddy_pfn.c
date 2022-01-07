
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long
__find_buddy_pfn(unsigned long page_pfn, unsigned int order)
{
 return page_pfn ^ (1 << order);
}
