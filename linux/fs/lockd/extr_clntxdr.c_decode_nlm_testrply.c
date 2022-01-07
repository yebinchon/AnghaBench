
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nlm_res {scalar_t__ status; } ;


 int decode_nlm_holder (struct xdr_stream*,struct nlm_res*) ;
 int decode_nlm_stat (struct xdr_stream*,scalar_t__*) ;
 scalar_t__ nlm_lck_denied ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int decode_nlm_testrply(struct xdr_stream *xdr,
          struct nlm_res *result)
{
 int error;

 error = decode_nlm_stat(xdr, &result->status);
 if (unlikely(error))
  goto out;
 if (result->status == nlm_lck_denied)
  error = decode_nlm_holder(xdr, result);
out:
 return error;
}
