
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs3_mkdirargs {int sattr; int len; int name; int fh; } ;


 int encode_diropargs3 (struct xdr_stream*,int ,int ,int ) ;
 int encode_sattr3 (struct xdr_stream*,int ,int ) ;
 int rpc_rqst_userns (struct rpc_rqst*) ;

__attribute__((used)) static void nfs3_xdr_enc_mkdir3args(struct rpc_rqst *req,
        struct xdr_stream *xdr,
        const void *data)
{
 const struct nfs3_mkdirargs *args = data;

 encode_diropargs3(xdr, args->fh, args->name, args->len);
 encode_sattr3(xdr, args->sattr, rpc_rqst_userns(req));
}
