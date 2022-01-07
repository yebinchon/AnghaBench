
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfsd4_lockt {int lt_denied; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
typedef scalar_t__ __be32 ;


 int nfsd4_encode_lock_denied (struct xdr_stream*,int *) ;
 scalar_t__ nfserr_denied ;

__attribute__((used)) static __be32
nfsd4_encode_lockt(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_lockt *lockt)
{
 struct xdr_stream *xdr = &resp->xdr;

 if (nfserr == nfserr_denied)
  nfsd4_encode_lock_denied(xdr, &lockt->lt_denied);
 return nfserr;
}
