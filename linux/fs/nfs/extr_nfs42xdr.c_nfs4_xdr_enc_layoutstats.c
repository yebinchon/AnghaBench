
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs42_layoutstat_args {int num_dev; int * devinfo; int fh; int seq_args; } ;
struct compound_hdr {int minorversion; } ;


 int PNFS_LAYOUTSTATS_MAXDEV ;
 int WARN_ON (int) ;
 int encode_compound_hdr (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ;
 int encode_layoutstats (struct xdr_stream*,struct nfs42_layoutstat_args const*,int *,struct compound_hdr*) ;
 int encode_nops (struct compound_hdr*) ;
 int encode_putfh (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_sequence (struct xdr_stream*,int *,struct compound_hdr*) ;
 int nfs4_xdr_minorversion (int *) ;

__attribute__((used)) static void nfs4_xdr_enc_layoutstats(struct rpc_rqst *req,
         struct xdr_stream *xdr,
         const void *data)
{
 const struct nfs42_layoutstat_args *args = data;
 int i;

 struct compound_hdr hdr = {
  .minorversion = nfs4_xdr_minorversion(&args->seq_args),
 };

 encode_compound_hdr(xdr, req, &hdr);
 encode_sequence(xdr, &args->seq_args, &hdr);
 encode_putfh(xdr, args->fh, &hdr);
 WARN_ON(args->num_dev > PNFS_LAYOUTSTATS_MAXDEV);
 for (i = 0; i < args->num_dev; i++)
  encode_layoutstats(xdr, args, &args->devinfo[i], &hdr);
 encode_nops(&hdr);
}
