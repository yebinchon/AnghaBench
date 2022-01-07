
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int cb_stateid; } ;
struct nfsd4_copy {TYPE_1__ cp_res; } ;
struct nfs4_cb_compound_hdr {int nops; } ;
struct knfsd_fh {int dummy; } ;
typedef int __be32 ;


 int OP_CB_OFFLOAD ;
 int cpu_to_be32 (int ) ;
 int encode_nfs_fh4 (struct xdr_stream*,struct knfsd_fh const*) ;
 int encode_offload_info4 (struct xdr_stream*,int ,struct nfsd4_copy const*) ;
 int encode_stateid4 (struct xdr_stream*,int *) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_cb_offload4args(struct xdr_stream *xdr,
       __be32 nfserr,
       const struct knfsd_fh *fh,
       const struct nfsd4_copy *cp,
       struct nfs4_cb_compound_hdr *hdr)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, 4);
 *p++ = cpu_to_be32(OP_CB_OFFLOAD);
 encode_nfs_fh4(xdr, fh);
 encode_stateid4(xdr, &cp->cp_res.cb_stateid);
 encode_offload_info4(xdr, nfserr, cp);

 hdr->nops++;
}
