
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 int PageSlabPfmemalloc (struct page*) ;
 int gfp_pfmemalloc_allowed (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline bool pfmemalloc_match(struct page *page, gfp_t gfpflags)
{
 if (unlikely(PageSlabPfmemalloc(page)))
  return gfp_pfmemalloc_allowed(gfpflags);

 return 1;
}
