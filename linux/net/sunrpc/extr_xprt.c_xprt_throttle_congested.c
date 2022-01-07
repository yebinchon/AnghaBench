
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int reserve_lock; int backlog; int state; } ;
struct rpc_task {int dummy; } ;


 int XPRT_CONGESTED ;
 int rpc_sleep_on (int *,struct rpc_task*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool xprt_throttle_congested(struct rpc_xprt *xprt, struct rpc_task *task)
{
 bool ret = 0;

 if (!test_bit(XPRT_CONGESTED, &xprt->state))
  goto out;
 spin_lock(&xprt->reserve_lock);
 if (test_bit(XPRT_CONGESTED, &xprt->state)) {
  rpc_sleep_on(&xprt->backlog, task, ((void*)0));
  ret = 1;
 }
 spin_unlock(&xprt->reserve_lock);
out:
 return ret;
}
