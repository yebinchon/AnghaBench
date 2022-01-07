
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs_sattrargs {int sattr; int fh; } ;


 int encode_fhandle (struct xdr_stream*,int ) ;
 int encode_sattr (struct xdr_stream*,int ,int ) ;
 int rpc_rqst_userns (struct rpc_rqst*) ;

__attribute__((used)) static void nfs2_xdr_enc_sattrargs(struct rpc_rqst *req,
       struct xdr_stream *xdr,
       const void *data)
{
 const struct nfs_sattrargs *args = data;

 encode_fhandle(xdr, args->fh);
 encode_sattr(xdr, args->sattr, rpc_rqst_userns(req));
}
