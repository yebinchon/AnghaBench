
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct gssx_ctx {int options; int open; int locally_initiated; int ctx_flags; int lifetime; int targ_name; int src_name; int mech; int need_release; int state; int exported_context_token; } ;
typedef int __be32 ;


 int ENOSPC ;
 int dummy_enc_opt_array (struct xdr_stream*,int *) ;
 int gssx_enc_bool (struct xdr_stream*,int ) ;
 int gssx_enc_buffer (struct xdr_stream*,int *) ;
 int gssx_enc_name (struct xdr_stream*,int *) ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static int gssx_enc_ctx(struct xdr_stream *xdr,
   struct gssx_ctx *ctx)
{
 __be32 *p;
 int err;


 err = gssx_enc_buffer(xdr, &ctx->exported_context_token);
 if (err)
  return err;


 err = gssx_enc_buffer(xdr, &ctx->state);
 if (err)
  return err;


 err = gssx_enc_bool(xdr, ctx->need_release);
 if (err)
  return err;


 err = gssx_enc_buffer(xdr, &ctx->mech);
 if (err)
  return err;


 err = gssx_enc_name(xdr, &ctx->src_name);
 if (err)
  return err;


 err = gssx_enc_name(xdr, &ctx->targ_name);
 if (err)
  return err;


 p = xdr_reserve_space(xdr, 8+8);
 if (!p)
  return -ENOSPC;
 p = xdr_encode_hyper(p, ctx->lifetime);


 p = xdr_encode_hyper(p, ctx->ctx_flags);


 err = gssx_enc_bool(xdr, ctx->locally_initiated);
 if (err)
  return err;


 err = gssx_enc_bool(xdr, ctx->open);
 if (err)
  return err;




 err = dummy_enc_opt_array(xdr, &ctx->options);

 return err;
}
