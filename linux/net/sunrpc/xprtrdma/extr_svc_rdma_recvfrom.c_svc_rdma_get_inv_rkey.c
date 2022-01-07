
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct svcxprt_rdma {int sc_snd_w_inv; } ;
struct svc_rdma_recv_ctxt {int rc_inv_rkey; scalar_t__* rc_recv_buf; } ;
typedef scalar_t__ __be32 ;


 int be32_to_cpu (scalar_t__) ;
 scalar_t__ be32_to_cpup (int ) ;
 int rpcrdma_fixed_maxsz ;
 scalar_t__ xdr_zero ;

__attribute__((used)) static void svc_rdma_get_inv_rkey(struct svcxprt_rdma *rdma,
      struct svc_rdma_recv_ctxt *ctxt)
{
 __be32 inv_rkey, *p;
 u32 i, segcount;

 ctxt->rc_inv_rkey = 0;

 if (!rdma->sc_snd_w_inv)
  return;

 inv_rkey = xdr_zero;
 p = ctxt->rc_recv_buf;
 p += rpcrdma_fixed_maxsz;


 while (*p++ != xdr_zero) {
  p++;
  if (inv_rkey == xdr_zero)
   inv_rkey = *p;
  else if (inv_rkey != *p)
   return;
  p += 4;
 }


 while (*p++ != xdr_zero) {
  segcount = be32_to_cpup(p++);
  for (i = 0; i < segcount; i++) {
   if (inv_rkey == xdr_zero)
    inv_rkey = *p;
   else if (inv_rkey != *p)
    return;
   p += 4;
  }
 }


 if (*p++ != xdr_zero) {
  segcount = be32_to_cpup(p++);
  for (i = 0; i < segcount; i++) {
   if (inv_rkey == xdr_zero)
    inv_rkey = *p;
   else if (inv_rkey != *p)
    return;
   p += 4;
  }
 }

 ctxt->rc_inv_rkey = be32_to_cpu(inv_rkey);
}
