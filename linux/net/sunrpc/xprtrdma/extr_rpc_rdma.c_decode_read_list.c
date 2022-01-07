
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef scalar_t__ __be32 ;


 int EIO ;
 scalar_t__ unlikely (int) ;
 scalar_t__* xdr_inline_decode (struct xdr_stream*,int) ;
 scalar_t__ xdr_zero ;

__attribute__((used)) static int decode_read_list(struct xdr_stream *xdr)
{
 __be32 *p;

 p = xdr_inline_decode(xdr, sizeof(*p));
 if (unlikely(!p))
  return -EIO;
 if (unlikely(*p != xdr_zero))
  return -EIO;
 return 0;
}
