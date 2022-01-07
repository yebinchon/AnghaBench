
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq {scalar_t__ curr; scalar_t__ idle; int wake_list; scalar_t__ nr_running; } ;


 struct rq* cpu_rq (int) ;
 int llist_empty (int *) ;

int idle_cpu(int cpu)
{
 struct rq *rq = cpu_rq(cpu);

 if (rq->curr != rq->idle)
  return 0;

 if (rq->nr_running)
  return 0;






 return 1;
}
