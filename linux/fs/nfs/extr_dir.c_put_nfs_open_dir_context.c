
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_dir_context {int cred; int list; } ;
struct inode {int i_lock; } ;


 int kfree (struct nfs_open_dir_context*) ;
 int list_del (int *) ;
 int put_cred (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void put_nfs_open_dir_context(struct inode *dir, struct nfs_open_dir_context *ctx)
{
 spin_lock(&dir->i_lock);
 list_del(&ctx->list);
 spin_unlock(&dir->i_lock);
 put_cred(ctx->cred);
 kfree(ctx);
}
