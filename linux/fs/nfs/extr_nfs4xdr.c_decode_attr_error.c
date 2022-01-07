
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct xdr_stream {int dummy; } ;
typedef int int32_t ;
typedef int __be32 ;


 int EIO ;
 unsigned int FATTR4_WORD0_RDATTR_ERROR ;
 int be32_to_cpup (int *) ;
 scalar_t__ likely (unsigned int) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_attr_error(struct xdr_stream *xdr, uint32_t *bitmap, int32_t *res)
{
 __be32 *p;

 if (unlikely(bitmap[0] & (FATTR4_WORD0_RDATTR_ERROR - 1U)))
  return -EIO;
 if (likely(bitmap[0] & FATTR4_WORD0_RDATTR_ERROR)) {
  p = xdr_inline_decode(xdr, 4);
  if (unlikely(!p))
   return -EIO;
  bitmap[0] &= ~FATTR4_WORD0_RDATTR_ERROR;
  *res = -be32_to_cpup(p);
 }
 return 0;
}
