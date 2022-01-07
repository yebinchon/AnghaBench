
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ __u32 ;


 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ xdr_stream_encode_uint32_array (struct xdr_stream*,scalar_t__ const*,size_t) ;

__attribute__((used)) static ssize_t xdr_encode_bitmap4(struct xdr_stream *xdr,
  const __u32 *bitmap, size_t len)
{
 ssize_t ret;


 while (len > 0 && bitmap[len-1] == 0)
  len--;
 ret = xdr_stream_encode_uint32_array(xdr, bitmap, len);
 if (WARN_ON_ONCE(ret < 0))
  return ret;
 return len;
}
