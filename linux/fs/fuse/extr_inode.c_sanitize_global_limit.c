
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SHIFT ;
 int totalram_pages () ;

__attribute__((used)) static void sanitize_global_limit(unsigned *limit)
{




 if (*limit == 0)
  *limit = ((totalram_pages() << PAGE_SHIFT) >> 13) / 392;

 if (*limit >= 1 << 16)
  *limit = (1 << 16) - 1;
}
