
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_sec_ctx {int dummy; } ;


 int atomic_dec (int *) ;
 int kfree (struct xfrm_sec_ctx*) ;
 int selinux_xfrm_refcount ;

__attribute__((used)) static void selinux_xfrm_free(struct xfrm_sec_ctx *ctx)
{
 if (!ctx)
  return;

 atomic_dec(&selinux_xfrm_refcount);
 kfree(ctx);
}
