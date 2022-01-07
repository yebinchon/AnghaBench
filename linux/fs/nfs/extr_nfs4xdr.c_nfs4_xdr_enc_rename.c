
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs_renameargs {int new_name; int old_name; int new_dir; int old_dir; int seq_args; } ;
struct compound_hdr {int minorversion; } ;


 int encode_compound_hdr (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ;
 int encode_nops (struct compound_hdr*) ;
 int encode_putfh (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_rename (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int encode_savefh (struct xdr_stream*,struct compound_hdr*) ;
 int encode_sequence (struct xdr_stream*,int *,struct compound_hdr*) ;
 int nfs4_xdr_minorversion (int *) ;

__attribute__((used)) static void nfs4_xdr_enc_rename(struct rpc_rqst *req, struct xdr_stream *xdr,
    const void *data)
{
 const struct nfs_renameargs *args = data;
 struct compound_hdr hdr = {
  .minorversion = nfs4_xdr_minorversion(&args->seq_args),
 };

 encode_compound_hdr(xdr, req, &hdr);
 encode_sequence(xdr, &args->seq_args, &hdr);
 encode_putfh(xdr, args->old_dir, &hdr);
 encode_savefh(xdr, &hdr);
 encode_putfh(xdr, args->new_dir, &hdr);
 encode_rename(xdr, args->old_name, args->new_name, &hdr);
 encode_nops(&hdr);
}
