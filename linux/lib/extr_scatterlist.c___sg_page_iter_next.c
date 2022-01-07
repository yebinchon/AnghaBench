
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_page_iter {scalar_t__ sg_pgoffset; int __pg_advance; scalar_t__ sg; int __nents; } ;


 scalar_t__ sg_next (scalar_t__) ;
 scalar_t__ sg_page_count (scalar_t__) ;

bool __sg_page_iter_next(struct sg_page_iter *piter)
{
 if (!piter->__nents || !piter->sg)
  return 0;

 piter->sg_pgoffset += piter->__pg_advance;
 piter->__pg_advance = 1;

 while (piter->sg_pgoffset >= sg_page_count(piter->sg)) {
  piter->sg_pgoffset -= sg_page_count(piter->sg);
  piter->sg = sg_next(piter->sg);
  if (!--piter->__nents || !piter->sg)
   return 0;
 }

 return 1;
}
