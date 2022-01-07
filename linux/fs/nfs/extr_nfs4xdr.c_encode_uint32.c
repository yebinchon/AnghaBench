
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ xdr_stream_encode_u32 (struct xdr_stream*,int ) ;

__attribute__((used)) static void encode_uint32(struct xdr_stream *xdr, u32 n)
{
 WARN_ON_ONCE(xdr_stream_encode_u32(xdr, n) < 0);
}
