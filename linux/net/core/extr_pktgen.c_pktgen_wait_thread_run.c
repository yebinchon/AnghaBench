
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktgen_thread {int dummy; } ;


 int current ;
 int msleep_interruptible (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pktgen_thread_lock ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ thread_is_running (struct pktgen_thread*) ;

__attribute__((used)) static int pktgen_wait_thread_run(struct pktgen_thread *t)
{
 while (thread_is_running(t)) {





  mutex_unlock(&pktgen_thread_lock);
  msleep_interruptible(100);
  mutex_lock(&pktgen_thread_lock);

  if (signal_pending(current))
   goto signal;
 }
 return 1;
signal:
 return 0;
}
