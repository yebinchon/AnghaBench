
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs3_diropargs {int len; int name; int fh; } ;


 int encode_diropargs3 (struct xdr_stream*,int ,int ,int ) ;

__attribute__((used)) static void nfs3_xdr_enc_lookup3args(struct rpc_rqst *req,
         struct xdr_stream *xdr,
         const void *data)
{
 const struct nfs3_diropargs *args = data;

 encode_diropargs3(xdr, args->fh, args->name, args->len);
}
