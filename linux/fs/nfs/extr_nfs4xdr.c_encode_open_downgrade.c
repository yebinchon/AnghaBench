
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_closeargs {int share_access; int seqid; int stateid; } ;
struct compound_hdr {int dummy; } ;


 int OP_OPEN_DOWNGRADE ;
 int decode_open_downgrade_maxsz ;
 int encode_nfs4_seqid (struct xdr_stream*,int ) ;
 int encode_nfs4_stateid (struct xdr_stream*,int *) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int encode_share_access (struct xdr_stream*,int ) ;

__attribute__((used)) static void encode_open_downgrade(struct xdr_stream *xdr, const struct nfs_closeargs *arg, struct compound_hdr *hdr)
{
 encode_op_hdr(xdr, OP_OPEN_DOWNGRADE, decode_open_downgrade_maxsz, hdr);
 encode_nfs4_stateid(xdr, &arg->stateid);
 encode_nfs4_seqid(xdr, arg->seqid);
 encode_share_access(xdr, arg->share_access);
}
