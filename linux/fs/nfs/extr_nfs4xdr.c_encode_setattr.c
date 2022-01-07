
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_setattrargs {int label; int iap; int stateid; } ;
struct nfs_server {int attr_bitmask; } ;
struct compound_hdr {int dummy; } ;


 int OP_SETATTR ;
 int decode_setattr_maxsz ;
 int encode_attrs (struct xdr_stream*,int ,int ,int *,struct nfs_server const*,int ) ;
 int encode_nfs4_stateid (struct xdr_stream*,int *) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;

__attribute__((used)) static void encode_setattr(struct xdr_stream *xdr, const struct nfs_setattrargs *arg, const struct nfs_server *server, struct compound_hdr *hdr)
{
 encode_op_hdr(xdr, OP_SETATTR, decode_setattr_maxsz, hdr);
 encode_nfs4_stateid(xdr, &arg->stateid);
 encode_attrs(xdr, arg->iap, arg->label, ((void*)0), server,
   server->attr_bitmask);
}
