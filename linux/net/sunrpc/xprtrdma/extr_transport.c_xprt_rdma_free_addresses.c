
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int * address_strings; } ;


 unsigned int RPC_DISPLAY_MAX ;


 int kfree (int ) ;

void
xprt_rdma_free_addresses(struct rpc_xprt *xprt)
{
 unsigned int i;

 for (i = 0; i < RPC_DISPLAY_MAX; i++)
  switch (i) {
  case 128:
  case 129:
   continue;
  default:
   kfree(xprt->address_strings[i]);
  }
}
