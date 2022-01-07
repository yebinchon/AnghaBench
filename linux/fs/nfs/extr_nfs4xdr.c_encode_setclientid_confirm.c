
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs4_setclientid_res {int confirm; int clientid; } ;
struct compound_hdr {int dummy; } ;


 int OP_SETCLIENTID_CONFIRM ;
 int decode_setclientid_confirm_maxsz ;
 int encode_nfs4_verifier (struct xdr_stream*,int *) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int encode_uint64 (struct xdr_stream*,int ) ;

__attribute__((used)) static void encode_setclientid_confirm(struct xdr_stream *xdr, const struct nfs4_setclientid_res *arg, struct compound_hdr *hdr)
{
 encode_op_hdr(xdr, OP_SETCLIENTID_CONFIRM,
   decode_setclientid_confirm_maxsz, hdr);
 encode_uint64(xdr, arg->clientid);
 encode_nfs4_verifier(xdr, &arg->confirm);
}
