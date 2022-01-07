
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct nfsd4_write {TYPE_1__ wr_verifier; int wr_how_written; int wr_bytes_written; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
typedef int __be32 ;


 int NFS4_VERIFIER_SIZE ;
 void* cpu_to_be32 (int ) ;
 int nfserr_resource ;
 int * xdr_encode_opaque_fixed (int *,int ,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static __be32
nfsd4_encode_write(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_write *write)
{
 struct xdr_stream *xdr = &resp->xdr;
 __be32 *p;

 p = xdr_reserve_space(xdr, 16);
 if (!p)
  return nfserr_resource;
 *p++ = cpu_to_be32(write->wr_bytes_written);
 *p++ = cpu_to_be32(write->wr_how_written);
 p = xdr_encode_opaque_fixed(p, write->wr_verifier.data,
      NFS4_VERIFIER_SIZE);
 return 0;
}
