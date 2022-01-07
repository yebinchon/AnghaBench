
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nlm_res {scalar_t__ status; } ;


 int encode_nlm_holder (struct xdr_stream*,struct nlm_res const*) ;
 scalar_t__ nlm_lck_denied ;

__attribute__((used)) static void encode_nlm_testrply(struct xdr_stream *xdr,
    const struct nlm_res *result)
{
 if (result->status == nlm_lck_denied)
  encode_nlm_holder(xdr, result);
}
