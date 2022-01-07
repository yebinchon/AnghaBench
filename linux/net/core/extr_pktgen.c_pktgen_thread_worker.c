
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pktgen_thread {int cpu; int control; TYPE_2__* tsk; int queue; TYPE_1__* net; int start_done; } ;
struct pktgen_dev {int dummy; } ;
struct TYPE_4__ {int comm; } ;
struct TYPE_3__ {scalar_t__ pktgen_exiting; } ;


 int BUG_ON (int) ;
 int DEFINE_WAIT (int ) ;
 int HZ ;
 int T_REMDEV ;
 int T_REMDEVALL ;
 int T_RUN ;
 int T_STOP ;
 int complete (int *) ;
 int cpu_relax () ;
 int current ;
 int init_waitqueue_head (int *) ;
 int kthread_should_stop () ;
 scalar_t__ likely (struct pktgen_dev*) ;
 scalar_t__ need_resched () ;
 struct pktgen_dev* next_to_run (struct pktgen_thread*) ;
 int pktgen_rem_all_ifs (struct pktgen_thread*) ;
 int pktgen_rem_one_if (struct pktgen_thread*) ;
 int pktgen_rem_thread (struct pktgen_thread*) ;
 int pktgen_resched (struct pktgen_dev*) ;
 int pktgen_run (struct pktgen_thread*) ;
 int pktgen_stop (struct pktgen_thread*) ;
 int pktgen_xmit (struct pktgen_dev*) ;
 int pr_debug (char*,int,...) ;
 int set_freezable () ;
 int smp_processor_id () ;
 int task_pid_nr (int ) ;
 int try_to_freeze () ;
 scalar_t__ unlikely (int) ;
 int wait ;
 int wait_event_interruptible_timeout (int ,int,int) ;

__attribute__((used)) static int pktgen_thread_worker(void *arg)
{
 DEFINE_WAIT(wait);
 struct pktgen_thread *t = arg;
 struct pktgen_dev *pkt_dev = ((void*)0);
 int cpu = t->cpu;

 BUG_ON(smp_processor_id() != cpu);

 init_waitqueue_head(&t->queue);
 complete(&t->start_done);

 pr_debug("starting pktgen/%d:  pid=%d\n", cpu, task_pid_nr(current));

 set_freezable();

 while (!kthread_should_stop()) {
  pkt_dev = next_to_run(t);

  if (unlikely(!pkt_dev && t->control == 0)) {
   if (t->net->pktgen_exiting)
    break;
   wait_event_interruptible_timeout(t->queue,
        t->control != 0,
        HZ/10);
   try_to_freeze();
   continue;
  }

  if (likely(pkt_dev)) {
   pktgen_xmit(pkt_dev);

   if (need_resched())
    pktgen_resched(pkt_dev);
   else
    cpu_relax();
  }

  if (t->control & T_STOP) {
   pktgen_stop(t);
   t->control &= ~(T_STOP);
  }

  if (t->control & T_RUN) {
   pktgen_run(t);
   t->control &= ~(T_RUN);
  }

  if (t->control & T_REMDEVALL) {
   pktgen_rem_all_ifs(t);
   t->control &= ~(T_REMDEVALL);
  }

  if (t->control & T_REMDEV) {
   pktgen_rem_one_if(t);
   t->control &= ~(T_REMDEV);
  }

  try_to_freeze();
 }

 pr_debug("%s stopping all device\n", t->tsk->comm);
 pktgen_stop(t);

 pr_debug("%s removing all device\n", t->tsk->comm);
 pktgen_rem_all_ifs(t);

 pr_debug("%s removing thread\n", t->tsk->comm);
 pktgen_rem_thread(t);

 return 0;
}
