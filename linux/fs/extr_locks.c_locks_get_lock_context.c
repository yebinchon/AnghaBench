
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_flctx; } ;
struct file_lock_context {int flc_lease; int flc_posix; int flc_flock; int flc_lock; } ;


 int F_UNLCK ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ cmpxchg (int *,int *,struct file_lock_context*) ;
 int flctx_cache ;
 struct file_lock_context* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct file_lock_context*) ;
 scalar_t__ likely (struct file_lock_context*) ;
 struct file_lock_context* smp_load_acquire (int *) ;
 int spin_lock_init (int *) ;
 int trace_locks_get_lock_context (struct inode*,int,struct file_lock_context*) ;

__attribute__((used)) static struct file_lock_context *
locks_get_lock_context(struct inode *inode, int type)
{
 struct file_lock_context *ctx;


 ctx = smp_load_acquire(&inode->i_flctx);
 if (likely(ctx) || type == F_UNLCK)
  goto out;

 ctx = kmem_cache_alloc(flctx_cache, GFP_KERNEL);
 if (!ctx)
  goto out;

 spin_lock_init(&ctx->flc_lock);
 INIT_LIST_HEAD(&ctx->flc_flock);
 INIT_LIST_HEAD(&ctx->flc_posix);
 INIT_LIST_HEAD(&ctx->flc_lease);





 if (cmpxchg(&inode->i_flctx, ((void*)0), ctx)) {
  kmem_cache_free(flctx_cache, ctx);
  ctx = smp_load_acquire(&inode->i_flctx);
 }
out:
 trace_locks_get_lock_context(inode, type, ctx);
 return ctx;
}
