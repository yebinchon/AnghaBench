
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct TYPE_2__ {int len; int name; } ;
struct nfs_removeargs {TYPE_1__ name; int fh; } ;


 int encode_diropargs (struct xdr_stream*,int ,int ,int ) ;

__attribute__((used)) static void nfs2_xdr_enc_removeargs(struct rpc_rqst *req,
        struct xdr_stream *xdr,
        const void *data)
{
 const struct nfs_removeargs *args = data;

 encode_diropargs(xdr, args->fh, args->name.name, args->name.len);
}
