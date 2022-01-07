
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int task_cleanup; int timer; int state; } ;


 int INIT_WORK (int *,int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int XPRT_LOCKED ;
 int del_timer_sync (int *) ;
 int dprintk (char*,struct rpc_xprt*) ;
 int schedule_work (int *) ;
 int wait_on_bit_lock (int *,int ,int ) ;
 int xprt_destroy_cb ;

__attribute__((used)) static void xprt_destroy(struct rpc_xprt *xprt)
{
 dprintk("RPC:       destroying transport %p\n", xprt);




 wait_on_bit_lock(&xprt->state, XPRT_LOCKED, TASK_UNINTERRUPTIBLE);

 del_timer_sync(&xprt->timer);





 INIT_WORK(&xprt->task_cleanup, xprt_destroy_cb);
 schedule_work(&xprt->task_cleanup);
}
