
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs_commitres {int seq_res; int op_status; } ;
struct compound_hdr {int status; } ;


 int decode_commit (struct xdr_stream*,struct nfs_commitres*) ;
 int decode_compound_hdr (struct xdr_stream*,struct compound_hdr*) ;
 int decode_putfh (struct xdr_stream*) ;
 int decode_sequence (struct xdr_stream*,int *,struct rpc_rqst*) ;

__attribute__((used)) static int nfs4_xdr_dec_commit(struct rpc_rqst *rqstp, struct xdr_stream *xdr,
          void *data)
{
 struct nfs_commitres *res = data;
 struct compound_hdr hdr;
 int status;

 status = decode_compound_hdr(xdr, &hdr);
 res->op_status = hdr.status;
 if (status)
  goto out;
 status = decode_sequence(xdr, &res->seq_res, rqstp);
 if (status)
  goto out;
 status = decode_putfh(xdr);
 if (status)
  goto out;
 status = decode_commit(xdr, res);
out:
 return status;
}
