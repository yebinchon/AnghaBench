
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct TYPE_3__ {int len; scalar_t__ data; } ;
typedef TYPE_1__ gssx_buffer ;
typedef int __be32 ;


 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int be32_to_cpup (int *) ;
 scalar_t__ kmemdup (int *,int,int ) ;
 int memcpy (scalar_t__,int *,int) ;
 scalar_t__ unlikely (int ) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int gssx_dec_buffer(struct xdr_stream *xdr,
      gssx_buffer *buf)
{
 u32 length;
 __be32 *p;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(p == ((void*)0)))
  return -ENOSPC;

 length = be32_to_cpup(p);
 p = xdr_inline_decode(xdr, length);
 if (unlikely(p == ((void*)0)))
  return -ENOSPC;

 if (buf->len == 0) {

  return 0;
 }
 if (length > buf->len)
  return -ENOSPC;

 if (!buf->data) {
  buf->data = kmemdup(p, length, GFP_KERNEL);
  if (!buf->data)
   return -ENOMEM;
 } else {
  memcpy(buf->data, p, length);
 }
 buf->len = length;
 return 0;
}
