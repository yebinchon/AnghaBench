
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs3_sattrargs {int guardtime; scalar_t__ guard; } ;
typedef int __be32 ;


 int xdr_encode_nfstime3 (int *,int *) ;
 int xdr_one ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;
 int xdr_zero ;

__attribute__((used)) static void encode_sattrguard3(struct xdr_stream *xdr,
          const struct nfs3_sattrargs *args)
{
 __be32 *p;

 if (args->guard) {
  p = xdr_reserve_space(xdr, 4 + 8);
  *p++ = xdr_one;
  xdr_encode_nfstime3(p, &args->guardtime);
 } else {
  p = xdr_reserve_space(xdr, 4);
  *p = xdr_zero;
 }
}
