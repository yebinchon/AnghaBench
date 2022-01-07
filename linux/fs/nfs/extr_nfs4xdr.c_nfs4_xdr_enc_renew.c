
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs_client {int cl_clientid; } ;
struct compound_hdr {int nops; } ;


 int encode_compound_hdr (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ;
 int encode_nops (struct compound_hdr*) ;
 int encode_renew (struct xdr_stream*,int ,struct compound_hdr*) ;

__attribute__((used)) static void nfs4_xdr_enc_renew(struct rpc_rqst *req, struct xdr_stream *xdr,
          const void *data)

{
 const struct nfs_client *clp = data;
 struct compound_hdr hdr = {
  .nops = 0,
 };

 encode_compound_hdr(xdr, req, &hdr);
 encode_renew(xdr, clp->cl_clientid, &hdr);
 encode_nops(&hdr);
}
