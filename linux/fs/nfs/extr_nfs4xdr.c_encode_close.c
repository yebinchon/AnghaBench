
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_closeargs {int stateid; int seqid; } ;
struct compound_hdr {int dummy; } ;


 int OP_CLOSE ;
 int decode_close_maxsz ;
 int encode_nfs4_seqid (struct xdr_stream*,int ) ;
 int encode_nfs4_stateid (struct xdr_stream*,int *) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;

__attribute__((used)) static void encode_close(struct xdr_stream *xdr, const struct nfs_closeargs *arg, struct compound_hdr *hdr)
{
 encode_op_hdr(xdr, OP_CLOSE, decode_close_maxsz, hdr);
 encode_nfs4_seqid(xdr, arg->seqid);
 encode_nfs4_stateid(xdr, &arg->stateid);
}
