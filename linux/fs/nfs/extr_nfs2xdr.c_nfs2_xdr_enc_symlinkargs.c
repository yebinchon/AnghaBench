
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs_symlinkargs {int sattr; int pathlen; int pages; int fromlen; int fromname; int fromfh; } ;


 int encode_diropargs (struct xdr_stream*,int ,int ,int ) ;
 int encode_path (struct xdr_stream*,int ,int ) ;
 int encode_sattr (struct xdr_stream*,int ,int ) ;
 int rpc_rqst_userns (struct rpc_rqst*) ;

__attribute__((used)) static void nfs2_xdr_enc_symlinkargs(struct rpc_rqst *req,
         struct xdr_stream *xdr,
         const void *data)
{
 const struct nfs_symlinkargs *args = data;

 encode_diropargs(xdr, args->fromfh, args->fromname, args->fromlen);
 encode_path(xdr, args->pages, args->pathlen);
 encode_sattr(xdr, args->sattr, rpc_rqst_userns(req));
}
