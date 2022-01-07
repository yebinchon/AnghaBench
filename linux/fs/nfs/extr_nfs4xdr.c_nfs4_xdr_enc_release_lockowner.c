
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs_release_lockowner_args {int lock_owner; } ;
struct compound_hdr {int minorversion; } ;


 int encode_compound_hdr (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ;
 int encode_nops (struct compound_hdr*) ;
 int encode_release_lockowner (struct xdr_stream*,int *,struct compound_hdr*) ;

__attribute__((used)) static void nfs4_xdr_enc_release_lockowner(struct rpc_rqst *req,
        struct xdr_stream *xdr,
        const void *data)
{
 const struct nfs_release_lockowner_args *args = data;
 struct compound_hdr hdr = {
  .minorversion = 0,
 };

 encode_compound_hdr(xdr, req, &hdr);
 encode_release_lockowner(xdr, &args->lock_owner, &hdr);
 encode_nops(&hdr);
}
