
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int xdr_one ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;
 int xdr_zero ;

__attribute__((used)) static void encode_bool(struct xdr_stream *xdr, const int value)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, 4);
 *p = value ? xdr_one : xdr_zero;
}
