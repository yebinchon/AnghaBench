
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_info {int refcnt; } ;


 int free (struct mem_info*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void mem_info__put(struct mem_info *mi)
{
 if (mi && refcount_dec_and_test(&mi->refcnt))
  free(mi);
}
