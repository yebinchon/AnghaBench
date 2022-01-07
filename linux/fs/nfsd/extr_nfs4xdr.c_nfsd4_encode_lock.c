
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfsd4_lock {int lk_denied; int lk_resp_stateid; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
typedef int __be32 ;


 int nfsd4_encode_lock_denied (struct xdr_stream*,int *) ;
 int nfsd4_encode_stateid (struct xdr_stream*,int *) ;
 int nfserr_denied ;

__attribute__((used)) static __be32
nfsd4_encode_lock(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_lock *lock)
{
 struct xdr_stream *xdr = &resp->xdr;

 if (!nfserr)
  nfserr = nfsd4_encode_stateid(xdr, &lock->lk_resp_stateid);
 else if (nfserr == nfserr_denied)
  nfserr = nfsd4_encode_lock_denied(xdr, &lock->lk_denied);

 return nfserr;
}
