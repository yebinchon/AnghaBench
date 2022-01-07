
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt {int xpt_bc_xprt; } ;
typedef scalar_t__ __be32 ;


 int RPC_CALL ;
 scalar_t__ cpu_to_be32 (int ) ;
 scalar_t__ rdma_msg ;
 scalar_t__ xdr_zero ;

__attribute__((used)) static bool svc_rdma_is_backchannel_reply(struct svc_xprt *xprt,
       __be32 *rdma_resp)
{
 __be32 *p;

 if (!xprt->xpt_bc_xprt)
  return 0;

 p = rdma_resp + 3;
 if (*p++ != rdma_msg)
  return 0;

 if (*p++ != xdr_zero)
  return 0;
 if (*p++ != xdr_zero)
  return 0;
 if (*p++ != xdr_zero)
  return 0;


 if (*p++ != *rdma_resp)
  return 0;

 if (*p == cpu_to_be32(RPC_CALL))
  return 0;

 return 1;
}
