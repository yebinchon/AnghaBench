
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 unsigned int SG_MAX_SINGLE_ALLOC ;
 int free_page (unsigned long) ;
 int kfree (struct scatterlist*) ;
 int kmemleak_free (struct scatterlist*) ;

__attribute__((used)) static void sg_kfree(struct scatterlist *sg, unsigned int nents)
{
 if (nents == SG_MAX_SINGLE_ALLOC) {
  kmemleak_free(sg);
  free_page((unsigned long) sg);
 } else
  kfree(sg);
}
