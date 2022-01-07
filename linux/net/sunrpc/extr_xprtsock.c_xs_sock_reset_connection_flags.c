
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int state; } ;


 int XPRT_CLOSE_WAIT ;
 int XPRT_CLOSING ;
 int clear_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;
 int xs_sock_reset_state_flags (struct rpc_xprt*) ;

__attribute__((used)) static void xs_sock_reset_connection_flags(struct rpc_xprt *xprt)
{
 smp_mb__before_atomic();
 clear_bit(XPRT_CLOSE_WAIT, &xprt->state);
 clear_bit(XPRT_CLOSING, &xprt->state);
 xs_sock_reset_state_flags(xprt);
 smp_mb__after_atomic();
}
