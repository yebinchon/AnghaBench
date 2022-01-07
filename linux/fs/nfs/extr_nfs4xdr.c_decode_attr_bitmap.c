
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xdr_stream {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ decode_bitmap4 (struct xdr_stream*,int *,int) ;

__attribute__((used)) static int decode_attr_bitmap(struct xdr_stream *xdr, uint32_t *bitmap)
{
 ssize_t ret;
 ret = decode_bitmap4(xdr, bitmap, 3);
 return ret < 0 ? ret : 0;
}
