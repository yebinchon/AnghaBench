
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ id; } ;
struct mem_cgroup {TYPE_1__ id; } ;


 int idr_remove (int *,scalar_t__) ;
 int mem_cgroup_idr ;

__attribute__((used)) static void mem_cgroup_id_remove(struct mem_cgroup *memcg)
{
 if (memcg->id.id > 0) {
  idr_remove(&mem_cgroup_idr, memcg->id.id);
  memcg->id.id = 0;
 }
}
