
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_dir_context {int list; int cred; scalar_t__ dup_cookie; scalar_t__ dir_cookie; int attr_gencount; scalar_t__ duped; } ;
struct nfs_inode {int cache_validity; int open_files; int attr_gencount; } ;
struct inode {int i_lock; } ;
struct cred {int dummy; } ;


 int ENOMEM ;
 struct nfs_open_dir_context* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct nfs_inode* NFS_I (struct inode*) ;
 int NFS_INO_DATA_INVAL_DEFER ;
 int NFS_INO_INVALID_DATA ;
 int NFS_INO_REVAL_FORCED ;
 int get_cred (struct cred const*) ;
 struct nfs_open_dir_context* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nfs_open_dir_context *alloc_nfs_open_dir_context(struct inode *dir, const struct cred *cred)
{
 struct nfs_inode *nfsi = NFS_I(dir);
 struct nfs_open_dir_context *ctx;
 ctx = kmalloc(sizeof(*ctx), GFP_KERNEL);
 if (ctx != ((void*)0)) {
  ctx->duped = 0;
  ctx->attr_gencount = nfsi->attr_gencount;
  ctx->dir_cookie = 0;
  ctx->dup_cookie = 0;
  ctx->cred = get_cred(cred);
  spin_lock(&dir->i_lock);
  if (list_empty(&nfsi->open_files) &&
      (nfsi->cache_validity & NFS_INO_DATA_INVAL_DEFER))
   nfsi->cache_validity |= NFS_INO_INVALID_DATA |
    NFS_INO_REVAL_FORCED;
  list_add(&ctx->list, &nfsi->open_files);
  spin_unlock(&dir->i_lock);
  return ctx;
 }
 return ERR_PTR(-ENOMEM);
}
