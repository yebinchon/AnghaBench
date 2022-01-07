
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs42_seek_args {int sa_what; int sa_offset; int sa_stateid; } ;
struct compound_hdr {int dummy; } ;


 int OP_SEEK ;
 int decode_seek_maxsz ;
 int encode_nfs4_stateid (struct xdr_stream*,int *) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int encode_uint32 (struct xdr_stream*,int ) ;
 int encode_uint64 (struct xdr_stream*,int ) ;

__attribute__((used)) static void encode_seek(struct xdr_stream *xdr,
   const struct nfs42_seek_args *args,
   struct compound_hdr *hdr)
{
 encode_op_hdr(xdr, OP_SEEK, decode_seek_maxsz, hdr);
 encode_nfs4_stateid(xdr, &args->sa_stateid);
 encode_uint64(xdr, args->sa_offset);
 encode_uint32(xdr, args->sa_what);
}
