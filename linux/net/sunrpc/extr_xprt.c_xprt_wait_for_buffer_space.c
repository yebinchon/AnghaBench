
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int state; } ;


 int XPRT_WRITE_SPACE ;
 int set_bit (int ,int *) ;

void xprt_wait_for_buffer_space(struct rpc_xprt *xprt)
{
 set_bit(XPRT_WRITE_SPACE, &xprt->state);
}
