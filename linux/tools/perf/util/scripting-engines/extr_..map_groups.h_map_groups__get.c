
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int refcnt; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static inline struct map_groups *map_groups__get(struct map_groups *mg)
{
 if (mg)
  refcount_inc(&mg->refcnt);
 return mg;
}
