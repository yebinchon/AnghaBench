
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct xdr_stream {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ xdr_stream_encode_u64 (struct xdr_stream*,int ) ;

__attribute__((used)) static void encode_uint64(struct xdr_stream *xdr, u64 n)
{
 WARN_ON_ONCE(xdr_stream_encode_u64(xdr, n) < 0);
}
