
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ref; } ;
struct mem_cgroup {int css; TYPE_1__ id; } ;


 int css_put (int *) ;
 int mem_cgroup_id_remove (struct mem_cgroup*) ;
 scalar_t__ refcount_sub_and_test (unsigned int,int *) ;

__attribute__((used)) static void mem_cgroup_id_put_many(struct mem_cgroup *memcg, unsigned int n)
{
 if (refcount_sub_and_test(n, &memcg->id.ref)) {
  mem_cgroup_id_remove(memcg);


  css_put(&memcg->css);
 }
}
