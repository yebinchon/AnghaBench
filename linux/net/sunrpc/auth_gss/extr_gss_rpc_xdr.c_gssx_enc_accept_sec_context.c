
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct rpc_rqst {TYPE_1__ rq_rcv_buf; } ;
struct gssx_arg_accept_sec_context {int npages; int pages; int options; int ret_deleg_cred; scalar_t__ input_cb; int input_token; scalar_t__ cred_handle; scalar_t__ context_handle; int call_ctx; } ;


 int PAGE_SIZE ;
 int XDRBUF_SPARSE_PAGES ;
 int dprintk (char*,int) ;
 int dummy_enc_opt_array (struct xdr_stream*,int *) ;
 int gssx_enc_bool (struct xdr_stream*,int ) ;
 int gssx_enc_call_ctx (struct xdr_stream*,int *) ;
 int gssx_enc_cb (struct xdr_stream*,scalar_t__) ;
 int gssx_enc_cred (struct xdr_stream*,scalar_t__) ;
 int gssx_enc_ctx (struct xdr_stream*,scalar_t__) ;
 int gssx_enc_in_token (struct xdr_stream*,int *) ;
 int xdr_inline_pages (TYPE_1__*,int,int ,int ,int) ;

void gssx_enc_accept_sec_context(struct rpc_rqst *req,
     struct xdr_stream *xdr,
     const void *data)
{
 const struct gssx_arg_accept_sec_context *arg = data;
 int err;

 err = gssx_enc_call_ctx(xdr, &arg->call_ctx);
 if (err)
  goto done;


 if (arg->context_handle)
  err = gssx_enc_ctx(xdr, arg->context_handle);
 else
  err = gssx_enc_bool(xdr, 0);
 if (err)
  goto done;


 if (arg->cred_handle)
  err = gssx_enc_cred(xdr, arg->cred_handle);
 else
  err = gssx_enc_bool(xdr, 0);
 if (err)
  goto done;


 err = gssx_enc_in_token(xdr, &arg->input_token);
 if (err)
  goto done;


 if (arg->input_cb)
  err = gssx_enc_cb(xdr, arg->input_cb);
 else
  err = gssx_enc_bool(xdr, 0);
 if (err)
  goto done;

 err = gssx_enc_bool(xdr, arg->ret_deleg_cred);
 if (err)
  goto done;




 err = dummy_enc_opt_array(xdr, &arg->options);

 xdr_inline_pages(&req->rq_rcv_buf,
  PAGE_SIZE/2 ,
  arg->pages, 0 , arg->npages * PAGE_SIZE);
 req->rq_rcv_buf.flags |= XDRBUF_SPARSE_PAGES;
done:
 if (err)
  dprintk("RPC:       gssx_enc_accept_sec_context: %d\n", err);
}
