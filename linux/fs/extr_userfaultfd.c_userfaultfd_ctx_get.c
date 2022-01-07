
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userfaultfd_ctx {int refcount; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static void userfaultfd_ctx_get(struct userfaultfd_ctx *ctx)
{
 refcount_inc(&ctx->refcount);
}
