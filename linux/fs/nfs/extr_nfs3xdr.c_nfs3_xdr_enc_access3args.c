
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs3_accessargs {int dummy; } ;


 int encode_access3args (struct xdr_stream*,struct nfs3_accessargs const*) ;

__attribute__((used)) static void nfs3_xdr_enc_access3args(struct rpc_rqst *req,
         struct xdr_stream *xdr,
         const void *data)
{
 const struct nfs3_accessargs *args = data;

 encode_access3args(xdr, args);
}
