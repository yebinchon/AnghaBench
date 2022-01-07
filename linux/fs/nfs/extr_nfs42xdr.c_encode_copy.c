
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs42_copy_args {int sync; int count; int dst_pos; int src_pos; int dst_stateid; int src_stateid; } ;
struct compound_hdr {int dummy; } ;


 int OP_COPY ;
 int decode_copy_maxsz ;
 int encode_nfs4_stateid (struct xdr_stream*,int *) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int encode_uint32 (struct xdr_stream*,int) ;
 int encode_uint64 (struct xdr_stream*,int ) ;

__attribute__((used)) static void encode_copy(struct xdr_stream *xdr,
   const struct nfs42_copy_args *args,
   struct compound_hdr *hdr)
{
 encode_op_hdr(xdr, OP_COPY, decode_copy_maxsz, hdr);
 encode_nfs4_stateid(xdr, &args->src_stateid);
 encode_nfs4_stateid(xdr, &args->dst_stateid);

 encode_uint64(xdr, args->src_pos);
 encode_uint64(xdr, args->dst_pos);
 encode_uint64(xdr, args->count);

 encode_uint32(xdr, 1);
 encode_uint32(xdr, args->sync);
 encode_uint32(xdr, 0);
}
