
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct xdr_netobj {scalar_t__ len; int data; } ;
typedef scalar_t__ ssize_t ;


 int EIO ;
 int XDR_MAX_NETOBJ ;
 scalar_t__ unlikely (int) ;
 scalar_t__ xdr_stream_decode_opaque_inline (struct xdr_stream*,void*,int ) ;

__attribute__((used)) static int decode_netobj(struct xdr_stream *xdr,
    struct xdr_netobj *obj)
{
 ssize_t ret;

 ret = xdr_stream_decode_opaque_inline(xdr, (void *)&obj->data,
   XDR_MAX_NETOBJ);
 if (unlikely(ret < 0))
  return -EIO;
 obj->len = ret;
 return 0;
}
