
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ xdr_stream_encode_opaque_fixed (struct xdr_stream*,void const*,size_t) ;

__attribute__((used)) static void encode_opaque_fixed(struct xdr_stream *xdr, const void *buf, size_t len)
{
 WARN_ON_ONCE(xdr_stream_encode_opaque_fixed(xdr, buf, len) < 0);
}
