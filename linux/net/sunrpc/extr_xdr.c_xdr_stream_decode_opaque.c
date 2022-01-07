
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int memcpy (void*,void*,scalar_t__) ;
 scalar_t__ xdr_stream_decode_opaque_inline (struct xdr_stream*,void**,size_t) ;

ssize_t xdr_stream_decode_opaque(struct xdr_stream *xdr, void *ptr, size_t size)
{
 ssize_t ret;
 void *p;

 ret = xdr_stream_decode_opaque_inline(xdr, &p, size);
 if (ret <= 0)
  return ret;
 memcpy(ptr, p, ret);
 return ret;
}
