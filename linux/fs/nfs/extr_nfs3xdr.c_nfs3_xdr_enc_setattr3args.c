
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs3_sattrargs {int sattr; int fh; } ;


 int encode_nfs_fh3 (struct xdr_stream*,int ) ;
 int encode_sattr3 (struct xdr_stream*,int ,int ) ;
 int encode_sattrguard3 (struct xdr_stream*,struct nfs3_sattrargs const*) ;
 int rpc_rqst_userns (struct rpc_rqst*) ;

__attribute__((used)) static void nfs3_xdr_enc_setattr3args(struct rpc_rqst *req,
          struct xdr_stream *xdr,
          const void *data)
{
 const struct nfs3_sattrargs *args = data;
 encode_nfs_fh3(xdr, args->fh);
 encode_sattr3(xdr, args->sattr, rpc_rqst_userns(req));
 encode_sattrguard3(xdr, args);
}
