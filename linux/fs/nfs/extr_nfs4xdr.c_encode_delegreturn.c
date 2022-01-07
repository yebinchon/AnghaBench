
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct compound_hdr {int dummy; } ;
typedef int nfs4_stateid ;


 int OP_DELEGRETURN ;
 int decode_delegreturn_maxsz ;
 int encode_nfs4_stateid (struct xdr_stream*,int const*) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;

__attribute__((used)) static void encode_delegreturn(struct xdr_stream *xdr, const nfs4_stateid *stateid, struct compound_hdr *hdr)
{
 encode_op_hdr(xdr, OP_DELEGRETURN, decode_delegreturn_maxsz, hdr);
 encode_nfs4_stateid(xdr, stateid);
}
