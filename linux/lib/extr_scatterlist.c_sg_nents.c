
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 struct scatterlist* sg_next (struct scatterlist*) ;

int sg_nents(struct scatterlist *sg)
{
 int nents;
 for (nents = 0; sg; sg = sg_next(sg))
  nents++;
 return nents;
}
