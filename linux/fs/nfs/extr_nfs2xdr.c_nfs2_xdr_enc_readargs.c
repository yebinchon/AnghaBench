
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct rpc_rqst {TYPE_1__ rq_rcv_buf; } ;
struct nfs_pgio_args {int count; int pgbase; int pages; } ;


 int NFS_readres_sz ;
 int XDRBUF_READ ;
 int encode_readargs (struct xdr_stream*,struct nfs_pgio_args const*) ;
 int rpc_prepare_reply_pages (struct rpc_rqst*,int ,int ,int ,int ) ;

__attribute__((used)) static void nfs2_xdr_enc_readargs(struct rpc_rqst *req,
      struct xdr_stream *xdr,
      const void *data)
{
 const struct nfs_pgio_args *args = data;

 encode_readargs(xdr, args);
 rpc_prepare_reply_pages(req, args->pages, args->pgbase,
    args->count, NFS_readres_sz);
 req->rq_rcv_buf.flags |= XDRBUF_READ;
}
