
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs42_falloc_res {int falloc_server; int falloc_fattr; int seq_res; } ;
struct compound_hdr {int dummy; } ;


 int decode_compound_hdr (struct xdr_stream*,struct compound_hdr*) ;
 int decode_deallocate (struct xdr_stream*,struct nfs42_falloc_res*) ;
 int decode_getfattr (struct xdr_stream*,int ,int ) ;
 int decode_putfh (struct xdr_stream*) ;
 int decode_sequence (struct xdr_stream*,int *,struct rpc_rqst*) ;

__attribute__((used)) static int nfs4_xdr_dec_deallocate(struct rpc_rqst *rqstp,
       struct xdr_stream *xdr,
       void *data)
{
 struct nfs42_falloc_res *res = data;
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
 status = decode_deallocate(xdr, res);
 if (status)
  goto out;
 decode_getfattr(xdr, res->falloc_fattr, res->falloc_server);
out:
 return status;
}
