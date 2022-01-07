
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_page_iter {scalar_t__ sg_pgoffset; int __pg_advance; scalar_t__ sg; int __nents; } ;
struct sg_dma_page_iter {struct sg_page_iter base; } ;


 scalar_t__ sg_dma_page_count (scalar_t__) ;
 scalar_t__ sg_next (scalar_t__) ;

bool __sg_page_iter_dma_next(struct sg_dma_page_iter *dma_iter)
{
 struct sg_page_iter *piter = &dma_iter->base;

 if (!piter->__nents || !piter->sg)
  return 0;

 piter->sg_pgoffset += piter->__pg_advance;
 piter->__pg_advance = 1;

 while (piter->sg_pgoffset >= sg_dma_page_count(piter->sg)) {
  piter->sg_pgoffset -= sg_dma_page_count(piter->sg);
  piter->sg = sg_next(piter->sg);
  if (!--piter->__nents || !piter->sg)
   return 0;
 }

 return 1;
}
