
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ref; } ;
struct mem_cgroup {TYPE_1__ id; } ;


 int refcount_add (unsigned int,int *) ;

__attribute__((used)) static void mem_cgroup_id_get_many(struct mem_cgroup *memcg, unsigned int n)
{
 refcount_add(n, &memcg->id.ref);
}
