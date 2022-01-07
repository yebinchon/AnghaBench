
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct gssx_ctx {int options; int open; int locally_initiated; int ctx_flags; int lifetime; int targ_name; int src_name; int mech; int need_release; int state; int exported_context_token; } ;
typedef int __be32 ;


 int ENOSPC ;
 int dummy_dec_opt_array (struct xdr_stream*,int *) ;
 int gssx_dec_bool (struct xdr_stream*,int *) ;
 int gssx_dec_buffer (struct xdr_stream*,int *) ;
 int gssx_dec_name (struct xdr_stream*,int *) ;
 scalar_t__ unlikely (int ) ;
 int * xdr_decode_hyper (int *,int *) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int gssx_dec_ctx(struct xdr_stream *xdr,
   struct gssx_ctx *ctx)
{
 __be32 *p;
 int err;


 err = gssx_dec_buffer(xdr, &ctx->exported_context_token);
 if (err)
  return err;


 err = gssx_dec_buffer(xdr, &ctx->state);
 if (err)
  return err;


 err = gssx_dec_bool(xdr, &ctx->need_release);
 if (err)
  return err;


 err = gssx_dec_buffer(xdr, &ctx->mech);
 if (err)
  return err;


 err = gssx_dec_name(xdr, &ctx->src_name);
 if (err)
  return err;


 err = gssx_dec_name(xdr, &ctx->targ_name);
 if (err)
  return err;


 p = xdr_inline_decode(xdr, 8+8);
 if (unlikely(p == ((void*)0)))
  return -ENOSPC;
 p = xdr_decode_hyper(p, &ctx->lifetime);


 p = xdr_decode_hyper(p, &ctx->ctx_flags);


 err = gssx_dec_bool(xdr, &ctx->locally_initiated);
 if (err)
  return err;


 err = gssx_dec_bool(xdr, &ctx->open);
 if (err)
  return err;



 err = dummy_dec_opt_array(xdr, &ctx->options);

 return err;
}
