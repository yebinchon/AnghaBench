
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rq {int rt; } ;
typedef enum schedutil_type { ____Placeholder_schedutil_type } schedutil_type ;


 int CONFIG_UCLAMP_TASK ;
 int ENERGY_UTIL ;
 int FREQUENCY_UTIL ;
 int IS_BUILTIN (int ) ;
 scalar_t__ cpu_bw_dl (struct rq*) ;
 struct rq* cpu_rq (int) ;
 unsigned long cpu_util_dl (struct rq*) ;
 unsigned long cpu_util_irq (struct rq*) ;
 unsigned long cpu_util_rt (struct rq*) ;
 unsigned long min (unsigned long,unsigned long) ;
 scalar_t__ rt_rq_is_runnable (int *) ;
 unsigned long scale_irq_capacity (unsigned long,unsigned long,unsigned long) ;
 unsigned long uclamp_util_with (struct rq*,unsigned long,struct task_struct*) ;
 scalar_t__ unlikely (int) ;

unsigned long schedutil_cpu_util(int cpu, unsigned long util_cfs,
     unsigned long max, enum schedutil_type type,
     struct task_struct *p)
{
 unsigned long dl_util, util, irq;
 struct rq *rq = cpu_rq(cpu);

 if (!IS_BUILTIN(CONFIG_UCLAMP_TASK) &&
     type == FREQUENCY_UTIL && rt_rq_is_runnable(&rq->rt)) {
  return max;
 }






 irq = cpu_util_irq(rq);
 if (unlikely(irq >= max))
  return max;
 util = util_cfs + cpu_util_rt(rq);
 if (type == FREQUENCY_UTIL)
  util = uclamp_util_with(rq, util, p);

 dl_util = cpu_util_dl(rq);
 if (util + dl_util >= max)
  return max;





 if (type == ENERGY_UTIL)
  util += dl_util;
 util = scale_irq_capacity(util, irq, max);
 util += irq;
 if (type == FREQUENCY_UTIL)
  util += cpu_bw_dl(rq);

 return min(max, util);
}
