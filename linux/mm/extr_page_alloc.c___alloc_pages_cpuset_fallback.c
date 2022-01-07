
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct alloc_context {int dummy; } ;
typedef int gfp_t ;


 unsigned int ALLOC_CPUSET ;
 struct page* get_page_from_freelist (int ,unsigned int,unsigned int,struct alloc_context const*) ;

__attribute__((used)) static inline struct page *
__alloc_pages_cpuset_fallback(gfp_t gfp_mask, unsigned int order,
         unsigned int alloc_flags,
         const struct alloc_context *ac)
{
 struct page *page;

 page = get_page_from_freelist(gfp_mask, order,
   alloc_flags|ALLOC_CPUSET, ac);




 if (!page)
  page = get_page_from_freelist(gfp_mask, order,
    alloc_flags, ac);

 return page;
}
