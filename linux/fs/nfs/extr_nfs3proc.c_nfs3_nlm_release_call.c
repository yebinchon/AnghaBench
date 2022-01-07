
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {int flags; } ;
struct nfs_lock_context {struct nfs_open_context* open_context; } ;


 int NFS_CONTEXT_UNLOCK ;
 int nfs_put_lock_context (struct nfs_lock_context*) ;
 int put_nfs_open_context (struct nfs_open_context*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nfs3_nlm_release_call(void *data)
{
 struct nfs_lock_context *l_ctx = data;
 struct nfs_open_context *ctx;
 if (l_ctx && test_bit(NFS_CONTEXT_UNLOCK, &l_ctx->open_context->flags)) {
  ctx = l_ctx->open_context;
  nfs_put_lock_context(l_ctx);
  put_nfs_open_context(ctx);
 }
}
