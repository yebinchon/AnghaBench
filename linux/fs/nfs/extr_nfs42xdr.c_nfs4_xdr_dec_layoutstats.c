
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs42_layoutstat_res {int num_dev; int rpc_status; int seq_res; } ;
struct compound_hdr {int dummy; } ;


 int PNFS_LAYOUTSTATS_MAXDEV ;
 int WARN_ON (int) ;
 int decode_compound_hdr (struct xdr_stream*,struct compound_hdr*) ;
 int decode_layoutstats (struct xdr_stream*) ;
 int decode_putfh (struct xdr_stream*) ;
 int decode_sequence (struct xdr_stream*,int *,struct rpc_rqst*) ;

__attribute__((used)) static int nfs4_xdr_dec_layoutstats(struct rpc_rqst *rqstp,
        struct xdr_stream *xdr,
        void *data)
{
 struct nfs42_layoutstat_res *res = data;
 struct compound_hdr hdr;
 int status, i;

 status = decode_compound_hdr(xdr, &hdr);
 if (status)
  goto out;
 status = decode_sequence(xdr, &res->seq_res, rqstp);
 if (status)
  goto out;
 status = decode_putfh(xdr);
 if (status)
  goto out;
 WARN_ON(res->num_dev > PNFS_LAYOUTSTATS_MAXDEV);
 for (i = 0; i < res->num_dev; i++) {
  status = decode_layoutstats(xdr);
  if (status)
   goto out;
 }
out:
 res->rpc_status = status;
 return status;
}
