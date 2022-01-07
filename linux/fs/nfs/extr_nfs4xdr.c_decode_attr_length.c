
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int EIO ;
 int be32_to_cpup (int *) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;
 unsigned int xdr_stream_pos (struct xdr_stream*) ;

__attribute__((used)) static int decode_attr_length(struct xdr_stream *xdr, uint32_t *attrlen, unsigned int *savep)
{
 __be32 *p;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(!p))
  return -EIO;
 *attrlen = be32_to_cpup(p);
 *savep = xdr_stream_pos(xdr);
 return 0;
}
