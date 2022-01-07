
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs_readdirargs {int count; int pages; } ;


 int NFS_readdirres_sz ;
 int encode_readdirargs (struct xdr_stream*,struct nfs_readdirargs const*) ;
 int rpc_prepare_reply_pages (struct rpc_rqst*,int ,int ,int ,int ) ;

__attribute__((used)) static void nfs2_xdr_enc_readdirargs(struct rpc_rqst *req,
         struct xdr_stream *xdr,
         const void *data)
{
 const struct nfs_readdirargs *args = data;

 encode_readdirargs(xdr, args);
 rpc_prepare_reply_pages(req, args->pages, 0,
    args->count, NFS_readdirres_sz);
}
