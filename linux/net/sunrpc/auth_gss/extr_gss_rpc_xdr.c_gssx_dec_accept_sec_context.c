
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct page {int dummy; } ;
struct gssx_res_accept_sec_context {int options; int * output_token; int * context_handle; int status; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 int gssx_dec_bool (struct xdr_stream*,scalar_t__*) ;
 int gssx_dec_buffer (struct xdr_stream*,int *) ;
 int gssx_dec_ctx (struct xdr_stream*,int *) ;
 int gssx_dec_option_array (struct xdr_stream*,int *) ;
 int gssx_dec_status (struct xdr_stream*,int *) ;
 int page_address (struct page*) ;
 int xdr_set_scratch_buffer (struct xdr_stream*,int ,int ) ;

int gssx_dec_accept_sec_context(struct rpc_rqst *rqstp,
    struct xdr_stream *xdr,
    void *data)
{
 struct gssx_res_accept_sec_context *res = data;
 u32 value_follows;
 int err;
 struct page *scratch;

 scratch = alloc_page(GFP_KERNEL);
 if (!scratch)
  return -ENOMEM;
 xdr_set_scratch_buffer(xdr, page_address(scratch), PAGE_SIZE);


 err = gssx_dec_status(xdr, &res->status);
 if (err)
  goto out_free;


 err = gssx_dec_bool(xdr, &value_follows);
 if (err)
  goto out_free;
 if (value_follows) {
  err = gssx_dec_ctx(xdr, res->context_handle);
  if (err)
   goto out_free;
 } else {
  res->context_handle = ((void*)0);
 }


 err = gssx_dec_bool(xdr, &value_follows);
 if (err)
  goto out_free;
 if (value_follows) {
  err = gssx_dec_buffer(xdr, res->output_token);
  if (err)
   goto out_free;
 } else {
  res->output_token = ((void*)0);
 }


 err = gssx_dec_bool(xdr, &value_follows);
 if (err)
  goto out_free;
 if (value_follows) {

  err = -EINVAL;
  goto out_free;
 }


 err = gssx_dec_option_array(xdr, &res->options);

out_free:
 __free_page(scratch);
 return err;
}
