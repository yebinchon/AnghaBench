
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sugov_cpu {unsigned long max; int cpu; int bw_dl; } ;
struct rq {int dummy; } ;


 int FREQUENCY_UTIL ;
 unsigned long arch_scale_cpu_capacity (int ) ;
 int cpu_bw_dl (struct rq*) ;
 struct rq* cpu_rq (int ) ;
 unsigned long cpu_util_cfs (struct rq*) ;
 unsigned long schedutil_cpu_util (int ,unsigned long,unsigned long,int ,int *) ;

__attribute__((used)) static unsigned long sugov_get_util(struct sugov_cpu *sg_cpu)
{
 struct rq *rq = cpu_rq(sg_cpu->cpu);
 unsigned long util = cpu_util_cfs(rq);
 unsigned long max = arch_scale_cpu_capacity(sg_cpu->cpu);

 sg_cpu->max = max;
 sg_cpu->bw_dl = cpu_bw_dl(rq);

 return schedutil_cpu_util(sg_cpu->cpu, util, max, FREQUENCY_UTIL, ((void*)0));
}
