
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_access_entry {int mask; struct cred const* cred; } ;
struct inode {int i_mode; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int (* access ) (struct inode*,struct nfs_access_entry*) ;} ;


 int EACCES ;
 int ECHILD ;
 int ESTALE ;
 int MAY_EXEC ;
 int MAY_NOT_BLOCK ;
 int MAY_READ ;
 int MAY_WRITE ;
 int NFS_ACCESS_DELETE ;
 int NFS_ACCESS_EXECUTE ;
 int NFS_ACCESS_EXTEND ;
 int NFS_ACCESS_LOOKUP ;
 int NFS_ACCESS_MODIFY ;
 int NFS_ACCESS_READ ;
 TYPE_2__* NFS_I (struct inode*) ;
 int NFS_INO_STALE ;
 TYPE_1__* NFS_PROTO (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 int nfs_access_add_cache (struct inode*,struct nfs_access_entry*) ;
 int nfs_access_calc_mask (int,int ) ;
 int nfs_access_get_cached (struct inode*,struct cred const*,struct nfs_access_entry*,int) ;
 int nfs_access_get_cached_rcu (struct inode*,struct cred const*,struct nfs_access_entry*) ;
 int nfs_zap_caches (struct inode*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct inode*,struct nfs_access_entry*) ;
 int trace_nfs_access_enter (struct inode*) ;
 int trace_nfs_access_exit (struct inode*,int) ;

__attribute__((used)) static int nfs_do_access(struct inode *inode, const struct cred *cred, int mask)
{
 struct nfs_access_entry cache;
 bool may_block = (mask & MAY_NOT_BLOCK) == 0;
 int cache_mask;
 int status;

 trace_nfs_access_enter(inode);

 status = nfs_access_get_cached_rcu(inode, cred, &cache);
 if (status != 0)
  status = nfs_access_get_cached(inode, cred, &cache, may_block);
 if (status == 0)
  goto out_cached;

 status = -ECHILD;
 if (!may_block)
  goto out;




 cache.mask = NFS_ACCESS_READ | NFS_ACCESS_MODIFY | NFS_ACCESS_EXTEND;
 if (S_ISDIR(inode->i_mode))
  cache.mask |= NFS_ACCESS_DELETE | NFS_ACCESS_LOOKUP;
 else
  cache.mask |= NFS_ACCESS_EXECUTE;
 cache.cred = cred;
 status = NFS_PROTO(inode)->access(inode, &cache);
 if (status != 0) {
  if (status == -ESTALE) {
   nfs_zap_caches(inode);
   if (!S_ISDIR(inode->i_mode))
    set_bit(NFS_INO_STALE, &NFS_I(inode)->flags);
  }
  goto out;
 }
 nfs_access_add_cache(inode, &cache);
out_cached:
 cache_mask = nfs_access_calc_mask(cache.mask, inode->i_mode);
 if ((mask & ~cache_mask & (MAY_READ | MAY_WRITE | MAY_EXEC)) != 0)
  status = -EACCES;
out:
 trace_nfs_access_exit(inode, status);
 return status;
}
