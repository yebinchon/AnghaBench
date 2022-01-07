
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct file_lock_context* i_flctx; } ;
struct file_lock_context {int dummy; } ;


 int flctx_cache ;
 int kmem_cache_free (int ,struct file_lock_context*) ;
 int locks_check_ctx_lists (struct inode*) ;
 scalar_t__ unlikely (struct file_lock_context*) ;

void
locks_free_lock_context(struct inode *inode)
{
 struct file_lock_context *ctx = inode->i_flctx;

 if (unlikely(ctx)) {
  locks_check_ctx_lists(inode);
  kmem_cache_free(flctx_cache, ctx);
 }
}
