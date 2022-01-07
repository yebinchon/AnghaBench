
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int EIO ;
 scalar_t__ unlikely (int) ;
 scalar_t__ xdr_stream_decode_opaque_fixed (struct xdr_stream*,void*,size_t) ;

__attribute__((used)) static int decode_opaque_fixed(struct xdr_stream *xdr, void *buf, size_t len)
{
 ssize_t ret = xdr_stream_decode_opaque_fixed(xdr, buf, len);
 if (unlikely(ret < 0))
  return -EIO;
 return 0;
}
