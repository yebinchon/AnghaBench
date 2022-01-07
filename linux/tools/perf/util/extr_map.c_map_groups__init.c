
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int refcnt; struct machine* machine; int maps; } ;
struct machine {int dummy; } ;


 int maps__init (int *) ;
 int refcount_set (int *,int) ;

void map_groups__init(struct map_groups *mg, struct machine *machine)
{
 maps__init(&mg->maps);
 mg->machine = machine;
 refcount_set(&mg->refcnt, 1);
}
