
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int be32_to_cpup (int *) ;
 int rpcrdma_fixed_maxsz ;
 int rpcrdma_segment_maxsz ;
 int xdr_encode_write_chunk (int *,int *,unsigned int) ;
 scalar_t__ xdr_zero ;

__attribute__((used)) static void svc_rdma_xdr_encode_reply_chunk(__be32 *rdma_resp, __be32 *rp_ch,
         unsigned int consumed)
{
 __be32 *p;




 p = rdma_resp + rpcrdma_fixed_maxsz + 1;


 while (*p++ != xdr_zero)
  p += 1 + be32_to_cpup(p) * rpcrdma_segment_maxsz;

 xdr_encode_write_chunk(p, rp_ch, consumed);
}
