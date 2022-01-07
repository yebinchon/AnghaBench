
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int s32 ;
typedef int __be32 ;


 int cpu_to_be32 (int const) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_int32(struct xdr_stream *xdr, const s32 value)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, 4);
 *p = cpu_to_be32(value);
}
