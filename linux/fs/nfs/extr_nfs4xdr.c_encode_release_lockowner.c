
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_lowner {int dummy; } ;
struct compound_hdr {int dummy; } ;


 int OP_RELEASE_LOCKOWNER ;
 int decode_release_lockowner_maxsz ;
 int encode_lockowner (struct xdr_stream*,struct nfs_lowner const*) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;

__attribute__((used)) static void encode_release_lockowner(struct xdr_stream *xdr, const struct nfs_lowner *lowner, struct compound_hdr *hdr)
{
 encode_op_hdr(xdr, OP_RELEASE_LOCKOWNER, decode_release_lockowner_maxsz, hdr);
 encode_lockowner(xdr, lowner);
}
