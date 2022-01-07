
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs42_clone_res {int rpc_status; int server; int dst_fattr; int seq_res; } ;
struct compound_hdr {int dummy; } ;


 int decode_clone (struct xdr_stream*) ;
 int decode_compound_hdr (struct xdr_stream*,struct compound_hdr*) ;
 int decode_getfattr (struct xdr_stream*,int ,int ) ;
 int decode_putfh (struct xdr_stream*) ;
 int decode_savefh (struct xdr_stream*) ;
 int decode_sequence (struct xdr_stream*,int *,struct rpc_rqst*) ;

__attribute__((used)) static int nfs4_xdr_dec_clone(struct rpc_rqst *rqstp,
         struct xdr_stream *xdr,
         void *data)
{
 struct nfs42_clone_res *res = data;
 struct compound_hdr hdr;
 int status;

 status = decode_compound_hdr(xdr, &hdr);
 if (status)
  goto out;
 status = decode_sequence(xdr, &res->seq_res, rqstp);
 if (status)
  goto out;
 status = decode_putfh(xdr);
 if (status)
  goto out;
 status = decode_savefh(xdr);
 if (status)
  goto out;
 status = decode_putfh(xdr);
 if (status)
  goto out;
 status = decode_clone(xdr);
 if (status)
  goto out;
 status = decode_getfattr(xdr, res->dst_fattr, res->server);

out:
 res->rpc_status = status;
 return status;
}
