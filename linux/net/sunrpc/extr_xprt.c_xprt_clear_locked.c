
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int task_cleanup; int state; int * snd_task; } ;


 int XPRT_CLOSE_WAIT ;
 int XPRT_LOCKED ;
 int clear_bit (int ,int *) ;
 int queue_work (int ,int *) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;
 int test_bit (int ,int *) ;
 int xprtiod_workqueue ;

__attribute__((used)) static void xprt_clear_locked(struct rpc_xprt *xprt)
{
 xprt->snd_task = ((void*)0);
 if (!test_bit(XPRT_CLOSE_WAIT, &xprt->state)) {
  smp_mb__before_atomic();
  clear_bit(XPRT_LOCKED, &xprt->state);
  smp_mb__after_atomic();
 } else
  queue_work(xprtiod_workqueue, &xprt->task_cleanup);
}
