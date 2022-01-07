
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct rpc_rqst {TYPE_1__ rq_rcv_buf; } ;
struct nfs_pgio_args {int replen; int count; int pgbase; int pages; } ;


 unsigned int NFS3_readres_sz ;
 int XDRBUF_READ ;
 int encode_read3args (struct xdr_stream*,struct nfs_pgio_args const*) ;
 int rpc_prepare_reply_pages (struct rpc_rqst*,int ,int ,int ,unsigned int) ;

__attribute__((used)) static void nfs3_xdr_enc_read3args(struct rpc_rqst *req,
       struct xdr_stream *xdr,
       const void *data)
{
 const struct nfs_pgio_args *args = data;
 unsigned int replen = args->replen ? args->replen : NFS3_readres_sz;

 encode_read3args(xdr, args);
 rpc_prepare_reply_pages(req, args->pages, args->pgbase,
    args->count, replen);
 req->rq_rcv_buf.flags |= XDRBUF_READ;
}
