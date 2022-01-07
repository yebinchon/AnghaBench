
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct rpcrdma_mr {int dummy; } ;
typedef int __be32 ;


 int EMSGSIZE ;
 int cpu_to_be32 (int ) ;
 scalar_t__ unlikely (int) ;
 int xdr_encode_rdma_segment (int *,struct rpcrdma_mr*) ;
 int xdr_one ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static int
encode_read_segment(struct xdr_stream *xdr, struct rpcrdma_mr *mr,
      u32 position)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, 6 * sizeof(*p));
 if (unlikely(!p))
  return -EMSGSIZE;

 *p++ = xdr_one;
 *p++ = cpu_to_be32(position);
 xdr_encode_rdma_segment(p, mr);
 return 0;
}
