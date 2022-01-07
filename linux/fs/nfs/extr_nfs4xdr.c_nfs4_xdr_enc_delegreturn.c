
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs4_delegreturnargs {int stateid; scalar_t__ bitmask; scalar_t__ lr_args; int fhandle; int seq_args; } ;
struct compound_hdr {int minorversion; } ;


 int encode_compound_hdr (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ;
 int encode_delegreturn (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_getfattr (struct xdr_stream*,scalar_t__,struct compound_hdr*) ;
 int encode_layoutreturn (struct xdr_stream*,scalar_t__,struct compound_hdr*) ;
 int encode_nops (struct compound_hdr*) ;
 int encode_putfh (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_sequence (struct xdr_stream*,int *,struct compound_hdr*) ;
 int nfs4_xdr_minorversion (int *) ;

__attribute__((used)) static void nfs4_xdr_enc_delegreturn(struct rpc_rqst *req,
         struct xdr_stream *xdr,
         const void *data)
{
 const struct nfs4_delegreturnargs *args = data;
 struct compound_hdr hdr = {
  .minorversion = nfs4_xdr_minorversion(&args->seq_args),
 };

 encode_compound_hdr(xdr, req, &hdr);
 encode_sequence(xdr, &args->seq_args, &hdr);
 encode_putfh(xdr, args->fhandle, &hdr);
 if (args->lr_args)
  encode_layoutreturn(xdr, args->lr_args, &hdr);
 if (args->bitmask)
  encode_getfattr(xdr, args->bitmask, &hdr);
 encode_delegreturn(xdr, args->stateid, &hdr);
 encode_nops(&hdr);
}
