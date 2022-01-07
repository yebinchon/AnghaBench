
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int transport_lock; int state; } ;


 int XPRT_WRITE_SPACE ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;
 int xprt_clear_write_space_locked (struct rpc_xprt*) ;

bool xprt_write_space(struct rpc_xprt *xprt)
{
 bool ret;

 if (!test_bit(XPRT_WRITE_SPACE, &xprt->state))
  return 0;
 spin_lock(&xprt->transport_lock);
 ret = xprt_clear_write_space_locked(xprt);
 spin_unlock(&xprt->transport_lock);
 return ret;
}
