
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs4_create_arg {int dummy; } ;


 int nfs4_xdr_enc_create (struct rpc_rqst*,struct xdr_stream*,struct nfs4_create_arg const*) ;

__attribute__((used)) static void nfs4_xdr_enc_symlink(struct rpc_rqst *req, struct xdr_stream *xdr,
     const void *data)
{
 const struct nfs4_create_arg *args = data;

 nfs4_xdr_enc_create(req, xdr, args);
}
