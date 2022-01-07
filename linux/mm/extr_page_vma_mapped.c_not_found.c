
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_vma_mapped_walk {int dummy; } ;


 int page_vma_mapped_walk_done (struct page_vma_mapped_walk*) ;

__attribute__((used)) static inline bool not_found(struct page_vma_mapped_walk *pvmw)
{
 page_vma_mapped_walk_done(pvmw);
 return 0;
}
