
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs42_falloc_args {int dummy; } ;
struct compound_hdr {int dummy; } ;


 int OP_ALLOCATE ;
 int decode_allocate_maxsz ;
 int encode_fallocate (struct xdr_stream*,struct nfs42_falloc_args const*) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;

__attribute__((used)) static void encode_allocate(struct xdr_stream *xdr,
       const struct nfs42_falloc_args *args,
       struct compound_hdr *hdr)
{
 encode_op_hdr(xdr, OP_ALLOCATE, decode_allocate_maxsz, hdr);
 encode_fallocate(xdr, args);
}
