
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfsd4_open_confirm {int oc_resp_stateid; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
typedef int __be32 ;


 int nfsd4_encode_stateid (struct xdr_stream*,int *) ;

__attribute__((used)) static __be32
nfsd4_encode_open_confirm(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_open_confirm *oc)
{
 struct xdr_stream *xdr = &resp->xdr;

 return nfsd4_encode_stateid(xdr, &oc->oc_resp_stateid);
}
