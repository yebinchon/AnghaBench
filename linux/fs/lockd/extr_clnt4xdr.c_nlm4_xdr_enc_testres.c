
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nlm_res {scalar_t__ status; int cookie; } ;


 int encode_cookie (struct xdr_stream*,int *) ;
 int encode_nlm4_holder (struct xdr_stream*,struct nlm_res const*) ;
 int encode_nlm4_stat (struct xdr_stream*,scalar_t__) ;
 scalar_t__ nlm_lck_denied ;

__attribute__((used)) static void nlm4_xdr_enc_testres(struct rpc_rqst *req,
     struct xdr_stream *xdr,
     const void *data)
{
 const struct nlm_res *result = data;

 encode_cookie(xdr, &result->cookie);
 encode_nlm4_stat(xdr, result->status);
 if (result->status == nlm_lck_denied)
  encode_nlm4_holder(xdr, result);
}
