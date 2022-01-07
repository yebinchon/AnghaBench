
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int sending; int state; } ;


 int XPRT_LOCKED ;
 int XPRT_WRITE_SPACE ;
 int __xprt_lock_write_func ;
 scalar_t__ rpc_wake_up_first_on_wq (int ,int *,int ,struct rpc_xprt*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int xprt_clear_locked (struct rpc_xprt*) ;
 int xprtiod_workqueue ;

__attribute__((used)) static void __xprt_lock_write_next(struct rpc_xprt *xprt)
{
 if (test_and_set_bit(XPRT_LOCKED, &xprt->state))
  return;
 if (test_bit(XPRT_WRITE_SPACE, &xprt->state))
  goto out_unlock;
 if (rpc_wake_up_first_on_wq(xprtiod_workqueue, &xprt->sending,
    __xprt_lock_write_func, xprt))
  return;
out_unlock:
 xprt_clear_locked(xprt);
}
