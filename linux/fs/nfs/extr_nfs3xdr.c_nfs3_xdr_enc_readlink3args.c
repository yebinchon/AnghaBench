
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs3_readlinkargs {int pglen; int pgbase; int pages; int fh; } ;


 int NFS3_readlinkres_sz ;
 int encode_nfs_fh3 (struct xdr_stream*,int ) ;
 int rpc_prepare_reply_pages (struct rpc_rqst*,int ,int ,int ,int ) ;

__attribute__((used)) static void nfs3_xdr_enc_readlink3args(struct rpc_rqst *req,
           struct xdr_stream *xdr,
           const void *data)
{
 const struct nfs3_readlinkargs *args = data;

 encode_nfs_fh3(xdr, args->fh);
 rpc_prepare_reply_pages(req, args->pages, args->pgbase,
    args->pglen, NFS3_readlinkres_sz);
}
