
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {TYPE_1__* buf; } ;
struct rpc_rqst {int dummy; } ;
struct nfs_pgio_args {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int XDRBUF_WRITE ;
 int encode_writeargs (struct xdr_stream*,struct nfs_pgio_args const*) ;

__attribute__((used)) static void nfs2_xdr_enc_writeargs(struct rpc_rqst *req,
       struct xdr_stream *xdr,
       const void *data)
{
 const struct nfs_pgio_args *args = data;

 encode_writeargs(xdr, args);
 xdr->buf->flags |= XDRBUF_WRITE;
}
