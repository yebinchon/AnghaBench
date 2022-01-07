
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {int dentry; } ;
struct nfs_lock_context {int list; int count; struct nfs_open_context* open_context; } ;
struct inode {int i_lock; } ;


 struct inode* d_inode (int ) ;
 int kfree_rcu (struct nfs_lock_context*,int ) ;
 int list_del_rcu (int *) ;
 int put_nfs_open_context (struct nfs_open_context*) ;
 int rcu_head ;
 int refcount_dec_and_lock (int *,int *) ;
 int spin_unlock (int *) ;

void nfs_put_lock_context(struct nfs_lock_context *l_ctx)
{
 struct nfs_open_context *ctx = l_ctx->open_context;
 struct inode *inode = d_inode(ctx->dentry);

 if (!refcount_dec_and_lock(&l_ctx->count, &inode->i_lock))
  return;
 list_del_rcu(&l_ctx->list);
 spin_unlock(&inode->i_lock);
 put_nfs_open_context(ctx);
 kfree_rcu(l_ctx, rcu_head);
}
