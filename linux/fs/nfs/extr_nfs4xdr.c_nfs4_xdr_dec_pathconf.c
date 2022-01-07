
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs4_pathconf_res {int pathconf; int seq_res; } ;
struct compound_hdr {int dummy; } ;


 int decode_compound_hdr (struct xdr_stream*,struct compound_hdr*) ;
 int decode_pathconf (struct xdr_stream*,int ) ;
 int decode_putfh (struct xdr_stream*) ;
 int decode_sequence (struct xdr_stream*,int *,struct rpc_rqst*) ;

__attribute__((used)) static int nfs4_xdr_dec_pathconf(struct rpc_rqst *req, struct xdr_stream *xdr,
     void *data)
{
 struct nfs4_pathconf_res *res = data;
 struct compound_hdr hdr;
 int status;

 status = decode_compound_hdr(xdr, &hdr);
 if (!status)
  status = decode_sequence(xdr, &res->seq_res, req);
 if (!status)
  status = decode_putfh(xdr);
 if (!status)
  status = decode_pathconf(xdr, res->pathconf);
 return status;
}
