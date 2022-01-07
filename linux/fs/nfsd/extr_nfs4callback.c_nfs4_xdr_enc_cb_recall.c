
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfsd4_callback {TYPE_1__* cb_clp; } ;
struct nfs4_delegation {int dummy; } ;
struct nfs4_cb_compound_hdr {int minorversion; int ident; } ;
struct TYPE_2__ {int cl_minorversion; int cl_cb_ident; } ;


 struct nfs4_delegation* cb_to_delegation (struct nfsd4_callback const*) ;
 int encode_cb_compound4args (struct xdr_stream*,struct nfs4_cb_compound_hdr*) ;
 int encode_cb_nops (struct nfs4_cb_compound_hdr*) ;
 int encode_cb_recall4args (struct xdr_stream*,struct nfs4_delegation const*,struct nfs4_cb_compound_hdr*) ;
 int encode_cb_sequence4args (struct xdr_stream*,struct nfsd4_callback const*,struct nfs4_cb_compound_hdr*) ;

__attribute__((used)) static void nfs4_xdr_enc_cb_recall(struct rpc_rqst *req, struct xdr_stream *xdr,
       const void *data)
{
 const struct nfsd4_callback *cb = data;
 const struct nfs4_delegation *dp = cb_to_delegation(cb);
 struct nfs4_cb_compound_hdr hdr = {
  .ident = cb->cb_clp->cl_cb_ident,
  .minorversion = cb->cb_clp->cl_minorversion,
 };

 encode_cb_compound4args(xdr, &hdr);
 encode_cb_sequence4args(xdr, cb, &hdr);
 encode_cb_recall4args(xdr, dp, &hdr);
 encode_cb_nops(&hdr);
}
