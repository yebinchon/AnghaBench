
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
struct nfsd4_close {int cl_stateid; } ;
typedef int __be32 ;


 int nfsd4_encode_stateid (struct xdr_stream*,int *) ;

__attribute__((used)) static __be32
nfsd4_encode_close(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_close *close)
{
 struct xdr_stream *xdr = &resp->xdr;

 return nfsd4_encode_stateid(xdr, &close->cl_stateid);
}
