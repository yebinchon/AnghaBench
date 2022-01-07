
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int transport_lock; scalar_t__ snd_task; int pending; int task_cleanup; int state; } ;


 int ENOTCONN ;
 int XPRT_CLOSE_WAIT ;
 int XPRT_LOCKED ;
 int queue_work (int ,int *) ;
 int rpc_wake_up_queued_task_set_status (int *,scalar_t__,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int xprtiod_workqueue ;

void xprt_force_disconnect(struct rpc_xprt *xprt)
{

 spin_lock(&xprt->transport_lock);
 set_bit(XPRT_CLOSE_WAIT, &xprt->state);

 if (test_and_set_bit(XPRT_LOCKED, &xprt->state) == 0)
  queue_work(xprtiod_workqueue, &xprt->task_cleanup);
 else if (xprt->snd_task)
  rpc_wake_up_queued_task_set_status(&xprt->pending,
    xprt->snd_task, -ENOTCONN);
 spin_unlock(&xprt->transport_lock);
}
