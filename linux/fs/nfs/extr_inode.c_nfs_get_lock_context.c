
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct nfs_open_context {TYPE_1__ lock_context; int dentry; } ;
struct nfs_lock_context {int list; scalar_t__ open_context; } ;
struct inode {int i_lock; } ;


 int EBADF ;
 int ENOMEM ;
 struct nfs_lock_context* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct nfs_lock_context* __nfs_find_lock_context (struct nfs_open_context*) ;
 struct inode* d_inode (int ) ;
 scalar_t__ get_nfs_open_context (struct nfs_open_context*) ;
 int kfree (struct nfs_lock_context*) ;
 struct nfs_lock_context* kmalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int nfs_init_lock_context (struct nfs_lock_context*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct nfs_lock_context *nfs_get_lock_context(struct nfs_open_context *ctx)
{
 struct nfs_lock_context *res, *new = ((void*)0);
 struct inode *inode = d_inode(ctx->dentry);

 rcu_read_lock();
 res = __nfs_find_lock_context(ctx);
 rcu_read_unlock();
 if (res == ((void*)0)) {
  new = kmalloc(sizeof(*new), GFP_KERNEL);
  if (new == ((void*)0))
   return ERR_PTR(-ENOMEM);
  nfs_init_lock_context(new);
  spin_lock(&inode->i_lock);
  res = __nfs_find_lock_context(ctx);
  if (res == ((void*)0)) {
   new->open_context = get_nfs_open_context(ctx);
   if (new->open_context) {
    list_add_tail_rcu(&new->list,
      &ctx->lock_context.list);
    res = new;
    new = ((void*)0);
   } else
    res = ERR_PTR(-EBADF);
  }
  spin_unlock(&inode->i_lock);
  kfree(new);
 }
 return res;
}
