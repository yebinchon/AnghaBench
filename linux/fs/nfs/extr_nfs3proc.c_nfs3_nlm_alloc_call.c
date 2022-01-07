
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_lock_context {TYPE_1__* open_context; } ;
struct TYPE_3__ {int flags; } ;


 int NFS_CONTEXT_UNLOCK ;
 int get_nfs_open_context (TYPE_1__*) ;
 int nfs_get_lock_context (TYPE_1__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nfs3_nlm_alloc_call(void *data)
{
 struct nfs_lock_context *l_ctx = data;
 if (l_ctx && test_bit(NFS_CONTEXT_UNLOCK, &l_ctx->open_context->flags)) {
  get_nfs_open_context(l_ctx->open_context);
  nfs_get_lock_context(l_ctx->open_context);
 }
}
