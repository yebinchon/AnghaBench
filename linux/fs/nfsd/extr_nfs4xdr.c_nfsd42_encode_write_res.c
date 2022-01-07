
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_compoundres {int xdr; } ;
struct TYPE_2__ {int data; } ;
struct nfsd42_write_res {int wr_stable_how; TYPE_1__ wr_verifier; int wr_bytes_written; int cb_stateid; } ;
typedef scalar_t__ __be32 ;


 int NFS4_VERIFIER_SIZE ;
 void* cpu_to_be32 (int) ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfsd4_encode_stateid (int *,int *) ;
 scalar_t__ nfserr_resource ;
 scalar_t__* xdr_encode_hyper (scalar_t__*,int ) ;
 scalar_t__* xdr_encode_opaque_fixed (scalar_t__*,int ,int) ;
 scalar_t__* xdr_reserve_space (int *,int) ;

__attribute__((used)) static __be32
nfsd42_encode_write_res(struct nfsd4_compoundres *resp,
  struct nfsd42_write_res *write, bool sync)
{
 __be32 *p;
 p = xdr_reserve_space(&resp->xdr, 4);
 if (!p)
  return nfserr_resource;

 if (sync)
  *p++ = cpu_to_be32(0);
 else {
  __be32 nfserr;
  *p++ = cpu_to_be32(1);
  nfserr = nfsd4_encode_stateid(&resp->xdr, &write->cb_stateid);
  if (nfserr)
   return nfserr;
 }
 p = xdr_reserve_space(&resp->xdr, 8 + 4 + NFS4_VERIFIER_SIZE);
 if (!p)
  return nfserr_resource;

 p = xdr_encode_hyper(p, write->wr_bytes_written);
 *p++ = cpu_to_be32(write->wr_stable_how);
 p = xdr_encode_opaque_fixed(p, write->wr_verifier.data,
        NFS4_VERIFIER_SIZE);
 return nfs_ok;
}
