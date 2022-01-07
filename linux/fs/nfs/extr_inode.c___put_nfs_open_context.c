
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_5__ {int count; } ;
struct nfs_open_context {int mdsthreshold; int ll_cred; TYPE_2__* dentry; int cred; int list; TYPE_1__ lock_context; } ;
struct inode {int i_lock; } ;
struct TYPE_7__ {int (* close_context ) (struct nfs_open_context*,int) ;} ;
struct TYPE_6__ {struct super_block* d_sb; } ;


 TYPE_4__* NFS_PROTO (struct inode*) ;
 struct inode* d_inode (TYPE_2__*) ;
 int dput (TYPE_2__*) ;
 int kfree (int ) ;
 int kfree_rcu (struct nfs_open_context*,int ) ;
 int list_del_rcu (int *) ;
 int list_empty (int *) ;
 int nfs_sb_deactive (struct super_block*) ;
 int put_cred (int ) ;
 int put_rpccred (int ) ;
 int rcu_head ;
 int refcount_dec_and_test (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct nfs_open_context*,int) ;

__attribute__((used)) static void __put_nfs_open_context(struct nfs_open_context *ctx, int is_sync)
{
 struct inode *inode = d_inode(ctx->dentry);
 struct super_block *sb = ctx->dentry->d_sb;

 if (!refcount_dec_and_test(&ctx->lock_context.count))
  return;
 if (!list_empty(&ctx->list)) {
  spin_lock(&inode->i_lock);
  list_del_rcu(&ctx->list);
  spin_unlock(&inode->i_lock);
 }
 if (inode != ((void*)0))
  NFS_PROTO(inode)->close_context(ctx, is_sync);
 put_cred(ctx->cred);
 dput(ctx->dentry);
 nfs_sb_deactive(sb);
 put_rpccred(ctx->ll_cred);
 kfree(ctx->mdsthreshold);
 kfree_rcu(ctx, rcu_head);
}
