
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;



__attribute__((used)) static inline void gup_pgd_range(unsigned long addr, unsigned long end,
  unsigned int flags, struct page **pages, int *nr)
{
}
