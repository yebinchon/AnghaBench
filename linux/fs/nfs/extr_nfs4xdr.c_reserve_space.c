
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int BUG_ON (int) ;
 int * xdr_reserve_space (struct xdr_stream*,size_t) ;

__attribute__((used)) static __be32 *reserve_space(struct xdr_stream *xdr, size_t nbytes)
{
 __be32 *p = xdr_reserve_space(xdr, nbytes);
 BUG_ON(!p);
 return p;
}
