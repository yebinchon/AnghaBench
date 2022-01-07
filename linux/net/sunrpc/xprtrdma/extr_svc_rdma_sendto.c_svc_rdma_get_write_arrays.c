
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __be32 ;


 int be32_to_cpu (scalar_t__) ;
 int rpcrdma_fixed_maxsz ;
 scalar_t__ xdr_zero ;

__attribute__((used)) static void svc_rdma_get_write_arrays(__be32 *rdma_argp,
          __be32 **write, __be32 **reply)
{
 __be32 *p;

 p = rdma_argp + rpcrdma_fixed_maxsz;


 while (*p++ != xdr_zero)
  p += 5;


 if (*p != xdr_zero) {
  *write = p;
  while (*p++ != xdr_zero)
   p += 1 + be32_to_cpu(*p) * 4;
 } else {
  *write = ((void*)0);
  p++;
 }


 if (*p != xdr_zero)
  *reply = p;
 else
  *reply = ((void*)0);
}
