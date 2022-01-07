
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_lock_context {int io_count; int list; int lockowner; int count; } ;
struct TYPE_2__ {int files; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 TYPE_1__* current ;
 int refcount_set (int *,int) ;

__attribute__((used)) static void nfs_init_lock_context(struct nfs_lock_context *l_ctx)
{
 refcount_set(&l_ctx->count, 1);
 l_ctx->lockowner = current->files;
 INIT_LIST_HEAD(&l_ctx->list);
 atomic_set(&l_ctx->io_count, 0);
}
