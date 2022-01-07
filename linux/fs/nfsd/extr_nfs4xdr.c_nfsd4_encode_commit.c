
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
struct TYPE_2__ {int data; } ;
struct nfsd4_commit {TYPE_1__ co_verf; } ;
typedef int __be32 ;


 int NFS4_VERIFIER_SIZE ;
 int nfserr_resource ;
 int * xdr_encode_opaque_fixed (int *,int ,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int ) ;

__attribute__((used)) static __be32
nfsd4_encode_commit(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_commit *commit)
{
 struct xdr_stream *xdr = &resp->xdr;
 __be32 *p;

 p = xdr_reserve_space(xdr, NFS4_VERIFIER_SIZE);
 if (!p)
  return nfserr_resource;
 p = xdr_encode_opaque_fixed(p, commit->co_verf.data,
      NFS4_VERIFIER_SIZE);
 return 0;
}
