
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct xdr_stream {int dummy; } ;


 int decode_uint64 (struct xdr_stream*,int *) ;

__attribute__((used)) static int decode_cookie3(struct xdr_stream *xdr, u64 *cookie)
{
 return decode_uint64(xdr, cookie);
}
