
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int state; } ;


 int XPRT_WRITE_SPACE ;
 int __xprt_lock_write_next (struct rpc_xprt*) ;
 int dprintk (char*,struct rpc_xprt*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static bool
xprt_clear_write_space_locked(struct rpc_xprt *xprt)
{
 if (test_and_clear_bit(XPRT_WRITE_SPACE, &xprt->state)) {
  __xprt_lock_write_next(xprt);
  dprintk("RPC:       write space: waking waiting task on "
    "xprt %p\n", xprt);
  return 1;
 }
 return 0;
}
