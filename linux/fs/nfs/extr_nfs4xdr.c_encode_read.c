
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_pgio_args {int count; int offset; int stateid; } ;
struct compound_hdr {int dummy; } ;
typedef int __be32 ;


 int OP_READ ;
 int cpu_to_be32 (int ) ;
 int decode_read_maxsz ;
 int encode_nfs4_stateid (struct xdr_stream*,int *) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int * reserve_space (struct xdr_stream*,int) ;
 int * xdr_encode_hyper (int *,int ) ;

__attribute__((used)) static void encode_read(struct xdr_stream *xdr, const struct nfs_pgio_args *args,
   struct compound_hdr *hdr)
{
 __be32 *p;

 encode_op_hdr(xdr, OP_READ, decode_read_maxsz, hdr);
 encode_nfs4_stateid(xdr, &args->stateid);

 p = reserve_space(xdr, 12);
 p = xdr_encode_hyper(p, args->offset);
 *p = cpu_to_be32(args->count);
}
