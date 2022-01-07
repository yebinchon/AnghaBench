
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_commitargs {int count; int offset; } ;
struct compound_hdr {int dummy; } ;
typedef int __be32 ;


 int OP_COMMIT ;
 int cpu_to_be32 (int ) ;
 int decode_commit_maxsz ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int * reserve_space (struct xdr_stream*,int) ;
 int * xdr_encode_hyper (int *,int ) ;

__attribute__((used)) static void encode_commit(struct xdr_stream *xdr, const struct nfs_commitargs *args, struct compound_hdr *hdr)
{
 __be32 *p;

 encode_op_hdr(xdr, OP_COMMIT, decode_commit_maxsz, hdr);
 p = reserve_space(xdr, 12);
 p = xdr_encode_hyper(p, args->offset);
 *p = cpu_to_be32(args->count);
}
