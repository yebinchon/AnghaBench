
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_page_iter {unsigned int __nents; unsigned long sg_pgoffset; struct scatterlist* sg; scalar_t__ __pg_advance; } ;
struct scatterlist {int dummy; } ;



void __sg_page_iter_start(struct sg_page_iter *piter,
     struct scatterlist *sglist, unsigned int nents,
     unsigned long pgoffset)
{
 piter->__pg_advance = 0;
 piter->__nents = nents;

 piter->sg = sglist;
 piter->sg_pgoffset = pgoffset;
}
