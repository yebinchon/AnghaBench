
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int EIO ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;
 int xdr_decode_hyper (int *,scalar_t__*) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_threshold_hint(struct xdr_stream *xdr,
      uint32_t *bitmap,
      uint64_t *res,
      uint32_t hint_bit)
{
 __be32 *p;

 *res = 0;
 if (likely(bitmap[0] & hint_bit)) {
  p = xdr_inline_decode(xdr, 8);
  if (unlikely(!p))
   return -EIO;
  xdr_decode_hyper(p, res);
 }
 return 0;
}
