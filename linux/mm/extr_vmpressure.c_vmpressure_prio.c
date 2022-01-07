
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int dummy; } ;
typedef int gfp_t ;


 int vmpressure (int ,struct mem_cgroup*,int,int ,int ) ;
 int vmpressure_level_critical_prio ;
 int vmpressure_win ;

void vmpressure_prio(gfp_t gfp, struct mem_cgroup *memcg, int prio)
{




 if (prio > vmpressure_level_critical_prio)
  return;
 vmpressure(gfp, memcg, 1, vmpressure_win, 0);
}
