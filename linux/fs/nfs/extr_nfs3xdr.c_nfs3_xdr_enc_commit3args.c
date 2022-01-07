
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs_commitargs {int dummy; } ;


 int encode_commit3args (struct xdr_stream*,struct nfs_commitargs const*) ;

__attribute__((used)) static void nfs3_xdr_enc_commit3args(struct rpc_rqst *req,
         struct xdr_stream *xdr,
         const void *data)
{
 const struct nfs_commitargs *args = data;

 encode_commit3args(xdr, args);
}
