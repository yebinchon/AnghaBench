
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_mr {int mr_offset; int mr_length; int mr_handle; } ;
typedef int __be32 ;


 void* cpu_to_be32 (int ) ;
 int xdr_encode_hyper (int *,int ) ;

__attribute__((used)) static void
xdr_encode_rdma_segment(__be32 *iptr, struct rpcrdma_mr *mr)
{
 *iptr++ = cpu_to_be32(mr->mr_handle);
 *iptr++ = cpu_to_be32(mr->mr_length);
 xdr_encode_hyper(iptr, mr->mr_offset);
}
