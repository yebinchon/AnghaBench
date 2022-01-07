
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int refcnt; } ;


 int map_groups__delete (struct map_groups*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void map_groups__put(struct map_groups *mg)
{
 if (mg && refcount_dec_and_test(&mg->refcnt))
  map_groups__delete(mg);
}
