
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs_linkargs {int tolen; int toname; int tofh; int fromfh; } ;


 int encode_diropargs (struct xdr_stream*,int ,int ,int ) ;
 int encode_fhandle (struct xdr_stream*,int ) ;

__attribute__((used)) static void nfs2_xdr_enc_linkargs(struct rpc_rqst *req,
      struct xdr_stream *xdr,
      const void *data)
{
 const struct nfs_linkargs *args = data;

 encode_fhandle(xdr, args->fromfh);
 encode_diropargs(xdr, args->tofh, args->toname, args->tolen);
}
