
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs4_readlink {int dummy; } ;
struct compound_hdr {int dummy; } ;


 int OP_READLINK ;
 int decode_readlink_maxsz ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;

__attribute__((used)) static void encode_readlink(struct xdr_stream *xdr, const struct nfs4_readlink *readlink, struct rpc_rqst *req, struct compound_hdr *hdr)
{
 encode_op_hdr(xdr, OP_READLINK, decode_readlink_maxsz, hdr);
}
