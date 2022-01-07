
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfsd4_create {int * cr_bmval; int cr_cinfo; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
typedef int __be32 ;


 int encode_cinfo (int *,int *) ;
 int nfsd4_encode_bitmap (struct xdr_stream*,int ,int ,int ) ;
 int nfserr_resource ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static __be32
nfsd4_encode_create(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_create *create)
{
 struct xdr_stream *xdr = &resp->xdr;
 __be32 *p;

 p = xdr_reserve_space(xdr, 20);
 if (!p)
  return nfserr_resource;
 encode_cinfo(p, &create->cr_cinfo);
 return nfsd4_encode_bitmap(xdr, create->cr_bmval[0],
   create->cr_bmval[1], create->cr_bmval[2]);
}
