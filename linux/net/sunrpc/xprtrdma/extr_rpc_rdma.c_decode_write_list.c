
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
typedef scalar_t__ __be32 ;


 int EIO ;
 scalar_t__ decode_write_chunk (struct xdr_stream*,scalar_t__*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__* xdr_inline_decode (struct xdr_stream*,int) ;
 scalar_t__ xdr_zero ;

__attribute__((used)) static int decode_write_list(struct xdr_stream *xdr, u32 *length)
{
 u32 chunklen;
 bool first;
 __be32 *p;

 *length = 0;
 first = 1;
 do {
  p = xdr_inline_decode(xdr, sizeof(*p));
  if (unlikely(!p))
   return -EIO;
  if (*p == xdr_zero)
   break;
  if (!first)
   return -EIO;

  if (decode_write_chunk(xdr, &chunklen))
   return -EIO;
  *length += chunklen;
  first = 0;
 } while (1);
 return 0;
}
