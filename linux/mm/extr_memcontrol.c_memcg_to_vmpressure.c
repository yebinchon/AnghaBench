
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmpressure {int dummy; } ;
struct mem_cgroup {struct vmpressure vmpressure; } ;


 struct mem_cgroup* root_mem_cgroup ;

struct vmpressure *memcg_to_vmpressure(struct mem_cgroup *memcg)
{
 if (!memcg)
  memcg = root_mem_cgroup;
 return &memcg->vmpressure;
}
