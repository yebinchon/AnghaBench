
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int window_size ;
typedef unsigned int u32 ;
typedef int timeout ;
struct TYPE_2__ {int data; int len; } ;
struct gss_cl_ctx {unsigned long gc_expiry; unsigned int gc_win; TYPE_1__ gc_acceptor; int gc_gss_ctx; TYPE_1__ gc_wire_ctx; } ;
struct gss_api_mech {int dummy; } ;
typedef int seclen ;
typedef int ret ;


 int EACCES ;
 int EFAULT ;
 int EKEYEXPIRED ;
 void* ERR_PTR (int) ;
 int GFP_NOFS ;
 unsigned int GSSD_MIN_TIMEOUT ;
 unsigned long HZ ;
 scalar_t__ IS_ERR (void const*) ;
 int gss_import_sec_context (void const*,unsigned int,struct gss_api_mech*,int *,int *,int ) ;
 unsigned long jiffies ;
 void* simple_get_bytes (void const*,void const*,...) ;
 void* simple_get_netobj (void const*,void const*,TYPE_1__*) ;
 int trace_rpcgss_context (unsigned long,unsigned long,unsigned int,int ,int ) ;
 int trace_rpcgss_import_ctx (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static const void *
gss_fill_context(const void *p, const void *end, struct gss_cl_ctx *ctx, struct gss_api_mech *gm)
{
 const void *q;
 unsigned int seclen;
 unsigned int timeout;
 unsigned long now = jiffies;
 u32 window_size;
 int ret;





 p = simple_get_bytes(p, end, &timeout, sizeof(timeout));
 if (IS_ERR(p))
  goto err;
 if (timeout == 0)
  timeout = GSSD_MIN_TIMEOUT;
 ctx->gc_expiry = now + ((unsigned long)timeout * HZ);



 p = simple_get_bytes(p, end, &window_size, sizeof(window_size));
 if (IS_ERR(p))
  goto err;
 ctx->gc_win = window_size;

 if (ctx->gc_win == 0) {




  p = simple_get_bytes(p, end, &ret, sizeof(ret));
  if (!IS_ERR(p))
   p = (ret == -EKEYEXPIRED) ? ERR_PTR(-EKEYEXPIRED) :
          ERR_PTR(-EACCES);
  goto err;
 }

 p = simple_get_netobj(p, end, &ctx->gc_wire_ctx);
 if (IS_ERR(p))
  goto err;

 p = simple_get_bytes(p, end, &seclen, sizeof(seclen));
 if (IS_ERR(p))
  goto err;
 q = (const void *)((const char *)p + seclen);
 if (unlikely(q > end || q < p)) {
  p = ERR_PTR(-EFAULT);
  goto err;
 }
 ret = gss_import_sec_context(p, seclen, gm, &ctx->gc_gss_ctx, ((void*)0), GFP_NOFS);
 if (ret < 0) {
  trace_rpcgss_import_ctx(ret);
  p = ERR_PTR(ret);
  goto err;
 }


 if (q == end) {
  p = q;
  goto done;
 }


 p = simple_get_netobj(q, end, &ctx->gc_acceptor);
 if (IS_ERR(p))
  goto err;
done:
 trace_rpcgss_context(ctx->gc_expiry, now, timeout,
        ctx->gc_acceptor.len, ctx->gc_acceptor.data);
err:
 return p;
}
