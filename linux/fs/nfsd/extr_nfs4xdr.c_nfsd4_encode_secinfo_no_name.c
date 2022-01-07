
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfsd4_secinfo_no_name {int sin_exp; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
typedef int __be32 ;


 int nfsd4_do_encode_secinfo (struct xdr_stream*,int ) ;

__attribute__((used)) static __be32
nfsd4_encode_secinfo_no_name(struct nfsd4_compoundres *resp, __be32 nfserr,
       struct nfsd4_secinfo_no_name *secinfo)
{
 struct xdr_stream *xdr = &resp->xdr;

 return nfsd4_do_encode_secinfo(xdr, secinfo->sin_exp);
}
