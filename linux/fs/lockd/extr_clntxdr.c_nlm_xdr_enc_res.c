
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nlm_res {int status; int cookie; } ;


 int encode_cookie (struct xdr_stream*,int *) ;
 int encode_nlm_stat (struct xdr_stream*,int ) ;

__attribute__((used)) static void nlm_xdr_enc_res(struct rpc_rqst *req,
       struct xdr_stream *xdr,
       const void *data)
{
 const struct nlm_res *result = data;

 encode_cookie(xdr, &result->cookie);
 encode_nlm_stat(xdr, result->status);
}
