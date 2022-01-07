
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int EIO ;
 scalar_t__ unlikely (int) ;
 int xdr_decode_hyper (int *,int *) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_uint64(struct xdr_stream *xdr, u64 *value)
{
 __be32 *p;

 p = xdr_inline_decode(xdr, 8);
 if (unlikely(!p))
  return -EIO;
 xdr_decode_hyper(p, value);
 return 0;
}
