
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 unsigned int be32_to_cpup (int ) ;
 scalar_t__ rpcrdma_fixed_maxsz ;
 unsigned int rpcrdma_segment_maxsz ;
 scalar_t__ xdr_zero ;

__attribute__((used)) static unsigned int svc_rdma_reply_hdr_len(__be32 *rdma_resp)
{
 unsigned int nsegs;
 __be32 *p;

 p = rdma_resp;


 p += rpcrdma_fixed_maxsz + 1;


 while (*p++ != xdr_zero) {
  nsegs = be32_to_cpup(p++);
  p += nsegs * rpcrdma_segment_maxsz;
 }


 if (*p++ != xdr_zero) {
  nsegs = be32_to_cpup(p++);
  p += nsegs * rpcrdma_segment_maxsz;
 }

 return (unsigned long)p - (unsigned long)rdma_resp;
}
