
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs42_clone_args {int count; int dst_offset; int src_offset; int dst_stateid; int src_stateid; } ;
struct compound_hdr {int dummy; } ;
typedef int __be32 ;


 int OP_CLONE ;
 int decode_clone_maxsz ;
 int encode_nfs4_stateid (struct xdr_stream*,int *) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int * reserve_space (struct xdr_stream*,int) ;
 int * xdr_encode_hyper (int *,int ) ;

__attribute__((used)) static void encode_clone(struct xdr_stream *xdr,
    const struct nfs42_clone_args *args,
    struct compound_hdr *hdr)
{
 __be32 *p;

 encode_op_hdr(xdr, OP_CLONE, decode_clone_maxsz, hdr);
 encode_nfs4_stateid(xdr, &args->src_stateid);
 encode_nfs4_stateid(xdr, &args->dst_stateid);
 p = reserve_space(xdr, 3*8);
 p = xdr_encode_hyper(p, args->src_offset);
 p = xdr_encode_hyper(p, args->dst_offset);
 xdr_encode_hyper(p, args->count);
}
