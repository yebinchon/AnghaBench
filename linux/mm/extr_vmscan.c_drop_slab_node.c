
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int dummy; } ;


 int GFP_KERNEL ;
 struct mem_cgroup* mem_cgroup_iter (int *,struct mem_cgroup*,int *) ;
 scalar_t__ shrink_slab (int ,int,struct mem_cgroup*,int ) ;

void drop_slab_node(int nid)
{
 unsigned long freed;

 do {
  struct mem_cgroup *memcg = ((void*)0);

  freed = 0;
  memcg = mem_cgroup_iter(((void*)0), ((void*)0), ((void*)0));
  do {
   freed += shrink_slab(GFP_KERNEL, nid, memcg, 0);
  } while ((memcg = mem_cgroup_iter(((void*)0), memcg, ((void*)0))) != ((void*)0));
 } while (freed > 10);
}
