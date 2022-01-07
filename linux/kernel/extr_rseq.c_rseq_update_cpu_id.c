
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct task_struct {TYPE_1__* rseq; } ;
struct TYPE_2__ {int cpu_id; int cpu_id_start; } ;


 int EFAULT ;
 scalar_t__ put_user (int ,int *) ;
 int raw_smp_processor_id () ;
 int trace_rseq_update (struct task_struct*) ;

__attribute__((used)) static int rseq_update_cpu_id(struct task_struct *t)
{
 u32 cpu_id = raw_smp_processor_id();

 if (put_user(cpu_id, &t->rseq->cpu_id_start))
  return -EFAULT;
 if (put_user(cpu_id, &t->rseq->cpu_id))
  return -EFAULT;
 trace_rseq_update(t);
 return 0;
}
