
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nlm_res {int status; int cookie; } ;


 int decode_cookie (struct xdr_stream*,int *) ;
 int decode_nlm4_stat (struct xdr_stream*,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nlm4_xdr_dec_res(struct rpc_rqst *req,
       struct xdr_stream *xdr,
       void *data)
{
 struct nlm_res *result = data;
 int error;

 error = decode_cookie(xdr, &result->cookie);
 if (unlikely(error))
  goto out;
 error = decode_nlm4_stat(xdr, &result->status);
out:
 return error;
}
