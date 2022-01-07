
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs_diropargs {int len; int name; int fh; } ;


 int encode_diropargs (struct xdr_stream*,int ,int ,int ) ;

__attribute__((used)) static void nfs2_xdr_enc_diropargs(struct rpc_rqst *req,
       struct xdr_stream *xdr,
       const void *data)
{
 const struct nfs_diropargs *args = data;

 encode_diropargs(xdr, args->fh, args->name, args->len);
}
