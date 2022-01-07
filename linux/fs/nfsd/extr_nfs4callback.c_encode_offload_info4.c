
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ wr_verifier; int wr_stable_how; int wr_bytes_written; } ;
struct nfsd4_copy {TYPE_2__ cp_res; } ;
typedef int __be32 ;


 int NFS4_VERIFIER_SIZE ;
 int cpu_to_be32 (int ) ;
 int * xdr_encode_empty_array (int *) ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_encode_opaque_fixed (int *,int ,int) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_offload_info4(struct xdr_stream *xdr,
     __be32 nfserr,
     const struct nfsd4_copy *cp)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, 4);
 *p++ = nfserr;
 if (!nfserr) {
  p = xdr_reserve_space(xdr, 4 + 8 + 4 + NFS4_VERIFIER_SIZE);
  p = xdr_encode_empty_array(p);
  p = xdr_encode_hyper(p, cp->cp_res.wr_bytes_written);
  *p++ = cpu_to_be32(cp->cp_res.wr_stable_how);
  p = xdr_encode_opaque_fixed(p, cp->cp_res.wr_verifier.data,
         NFS4_VERIFIER_SIZE);
 } else {
  p = xdr_reserve_space(xdr, 8);

  p = xdr_encode_hyper(p, 0);
 }
}
