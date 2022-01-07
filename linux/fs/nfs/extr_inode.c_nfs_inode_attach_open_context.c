
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {int list; int dentry; } ;
struct nfs_inode {int cache_validity; int open_files; } ;
struct inode {int i_lock; } ;


 struct nfs_inode* NFS_I (struct inode*) ;
 int NFS_INO_DATA_INVAL_DEFER ;
 int NFS_INO_INVALID_DATA ;
 int NFS_INO_REVAL_FORCED ;
 struct inode* d_inode (int ) ;
 int list_add_tail_rcu (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nfs_inode_attach_open_context(struct nfs_open_context *ctx)
{
 struct inode *inode = d_inode(ctx->dentry);
 struct nfs_inode *nfsi = NFS_I(inode);

 spin_lock(&inode->i_lock);
 if (list_empty(&nfsi->open_files) &&
     (nfsi->cache_validity & NFS_INO_DATA_INVAL_DEFER))
  nfsi->cache_validity |= NFS_INO_INVALID_DATA |
   NFS_INO_REVAL_FORCED;
 list_add_tail_rcu(&ctx->list, &nfsi->open_files);
 spin_unlock(&inode->i_lock);
}
