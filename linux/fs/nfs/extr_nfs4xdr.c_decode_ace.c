
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int EIO ;
 int decode_opaque_inline (struct xdr_stream*,unsigned int*,char**) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_ace(struct xdr_stream *xdr, void *ace)
{
 __be32 *p;
 unsigned int strlen;
 char *str;

 p = xdr_inline_decode(xdr, 12);
 if (unlikely(!p))
  return -EIO;
 return decode_opaque_inline(xdr, &strlen, &str);
}
