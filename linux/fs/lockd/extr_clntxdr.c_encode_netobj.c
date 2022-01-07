
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int xdr_encode_opaque (int *,int const*,unsigned int const) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_netobj(struct xdr_stream *xdr,
     const u8 *data, const unsigned int length)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, 4 + length);
 xdr_encode_opaque(p, data, length);
}
