
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs3_linkargs {int tolen; int toname; int tofh; int fromfh; } ;


 int encode_diropargs3 (struct xdr_stream*,int ,int ,int ) ;
 int encode_nfs_fh3 (struct xdr_stream*,int ) ;

__attribute__((used)) static void nfs3_xdr_enc_link3args(struct rpc_rqst *req,
       struct xdr_stream *xdr,
       const void *data)
{
 const struct nfs3_linkargs *args = data;

 encode_nfs_fh3(xdr, args->fromfh);
 encode_diropargs3(xdr, args->tofh, args->toname, args->tolen);
}
