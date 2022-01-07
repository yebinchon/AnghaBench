
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int EIO ;
 int be32_to_cpup (int ) ;
 int trace_xprtrdma_decode_seg (int ,int ,int ) ;
 scalar_t__ unlikely (int) ;
 int xdr_decode_hyper (int *,int *) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_rdma_segment(struct xdr_stream *xdr, u32 *length)
{
 u32 handle;
 u64 offset;
 __be32 *p;

 p = xdr_inline_decode(xdr, 4 * sizeof(*p));
 if (unlikely(!p))
  return -EIO;

 handle = be32_to_cpup(p++);
 *length = be32_to_cpup(p++);
 xdr_decode_hyper(p, &offset);

 trace_xprtrdma_decode_seg(handle, *length, offset);
 return 0;
}
