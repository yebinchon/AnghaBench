
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int dummy; } ;


 unsigned int BC_MAX_SLOTS ;

unsigned int xprt_bc_max_slots(struct rpc_xprt *xprt)
{
 return BC_MAX_SLOTS;
}
