
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs_readlinkargs {int pglen; int pgbase; int pages; int fh; } ;


 int NFS_readlinkres_sz ;
 int encode_fhandle (struct xdr_stream*,int ) ;
 int rpc_prepare_reply_pages (struct rpc_rqst*,int ,int ,int ,int ) ;

__attribute__((used)) static void nfs2_xdr_enc_readlinkargs(struct rpc_rqst *req,
          struct xdr_stream *xdr,
          const void *data)
{
 const struct nfs_readlinkargs *args = data;

 encode_fhandle(xdr, args->fh);
 rpc_prepare_reply_pages(req, args->pages, args->pgbase,
    args->pglen, NFS_readlinkres_sz);
}
