
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct nfs_lock_context {TYPE_1__* open_context; } ;
struct TYPE_2__ {int flags; } ;


 int NFS_CONTEXT_UNLOCK ;
 int nfs_async_iocounter_wait (struct rpc_task*,struct nfs_lock_context*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool nfs3_nlm_unlock_prepare(struct rpc_task *task, void *data)
{
 struct nfs_lock_context *l_ctx = data;
 if (l_ctx && test_bit(NFS_CONTEXT_UNLOCK, &l_ctx->open_context->flags))
  return nfs_async_iocounter_wait(task, l_ctx);
 return 0;

}
