
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct svc_fh {int fh_dentry; int fh_export; } ;
struct nfsd4_getattr {int ga_bmval; struct svc_fh* ga_fhp; } ;
struct nfsd4_compoundres {int rqstp; struct xdr_stream xdr; } ;
typedef int __be32 ;


 int nfsd4_encode_fattr (struct xdr_stream*,struct svc_fh*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static __be32
nfsd4_encode_getattr(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_getattr *getattr)
{
 struct svc_fh *fhp = getattr->ga_fhp;
 struct xdr_stream *xdr = &resp->xdr;

 return nfsd4_encode_fattr(xdr, fhp, fhp->fh_export, fhp->fh_dentry,
        getattr->ga_bmval, resp->rqstp, 0);
}
