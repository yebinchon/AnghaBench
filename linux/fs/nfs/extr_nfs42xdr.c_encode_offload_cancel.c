
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs42_offload_status_args {int osa_stateid; } ;
struct compound_hdr {int dummy; } ;


 int OP_OFFLOAD_CANCEL ;
 int decode_offload_cancel_maxsz ;
 int encode_nfs4_stateid (struct xdr_stream*,int *) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;

__attribute__((used)) static void encode_offload_cancel(struct xdr_stream *xdr,
      const struct nfs42_offload_status_args *args,
      struct compound_hdr *hdr)
{
 encode_op_hdr(xdr, OP_OFFLOAD_CANCEL, decode_offload_cancel_maxsz, hdr);
 encode_nfs4_stateid(xdr, &args->osa_stateid);
}
