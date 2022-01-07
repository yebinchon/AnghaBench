
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int cache_validity; int access_cache_entry_lru; } ;
struct nfs_access_entry {int lru; int mask; int cred; } ;
struct inode {int i_lock; } ;
struct cred {int dummy; } ;


 int ECHILD ;
 int ENOENT ;
 struct nfs_inode* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_ACCESS ;
 int NFS_SERVER (struct inode*) ;
 int __nfs_revalidate_inode (int ,struct inode*) ;
 int list_move_tail (int *,int *) ;
 struct nfs_access_entry* nfs_access_search_rbtree (struct inode*,struct cred const*) ;
 int nfs_access_zap_cache (struct inode*) ;
 int nfs_check_cache_invalid (struct inode*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int nfs_access_get_cached(struct inode *inode, const struct cred *cred, struct nfs_access_entry *res, bool may_block)
{
 struct nfs_inode *nfsi = NFS_I(inode);
 struct nfs_access_entry *cache;
 bool retry = 1;
 int err;

 spin_lock(&inode->i_lock);
 for(;;) {
  if (nfsi->cache_validity & NFS_INO_INVALID_ACCESS)
   goto out_zap;
  cache = nfs_access_search_rbtree(inode, cred);
  err = -ENOENT;
  if (cache == ((void*)0))
   goto out;

  if (!nfs_check_cache_invalid(inode, NFS_INO_INVALID_ACCESS))
   break;
  err = -ECHILD;
  if (!may_block)
   goto out;
  if (!retry)
   goto out_zap;
  spin_unlock(&inode->i_lock);
  err = __nfs_revalidate_inode(NFS_SERVER(inode), inode);
  if (err)
   return err;
  spin_lock(&inode->i_lock);
  retry = 0;
 }
 res->cred = cache->cred;
 res->mask = cache->mask;
 list_move_tail(&cache->lru, &nfsi->access_cache_entry_lru);
 err = 0;
out:
 spin_unlock(&inode->i_lock);
 return err;
out_zap:
 spin_unlock(&inode->i_lock);
 nfs_access_zap_cache(inode);
 return -ENOENT;
}
