
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {TYPE_1__* buf; } ;
struct rpc_rqst {int dummy; } ;
struct nfs3_symlinkargs {int fromlen; int fromname; int fromfh; } ;
struct TYPE_2__ {int flags; } ;


 int XDRBUF_WRITE ;
 int encode_diropargs3 (struct xdr_stream*,int ,int ,int ) ;
 int encode_symlinkdata3 (struct xdr_stream*,struct nfs3_symlinkargs const*,int ) ;
 int rpc_rqst_userns (struct rpc_rqst*) ;

__attribute__((used)) static void nfs3_xdr_enc_symlink3args(struct rpc_rqst *req,
          struct xdr_stream *xdr,
          const void *data)
{
 const struct nfs3_symlinkargs *args = data;

 encode_diropargs3(xdr, args->fromfh, args->fromname, args->fromlen);
 encode_symlinkdata3(xdr, args, rpc_rqst_userns(req));
 xdr->buf->flags |= XDRBUF_WRITE;
}
