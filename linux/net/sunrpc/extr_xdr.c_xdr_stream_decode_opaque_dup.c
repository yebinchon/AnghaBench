
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int ssize_t ;
typedef int gfp_t ;


 int ENOMEM ;
 void* kmemdup (void*,int ,int ) ;
 int xdr_stream_decode_opaque_inline (struct xdr_stream*,void**,size_t) ;

ssize_t xdr_stream_decode_opaque_dup(struct xdr_stream *xdr, void **ptr,
  size_t maxlen, gfp_t gfp_flags)
{
 ssize_t ret;
 void *p;

 ret = xdr_stream_decode_opaque_inline(xdr, &p, maxlen);
 if (ret > 0) {
  *ptr = kmemdup(p, ret, gfp_flags);
  if (*ptr != ((void*)0))
   return ret;
  ret = -ENOMEM;
 }
 *ptr = ((void*)0);
 return ret;
}
