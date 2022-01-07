
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_commit_info {int inode; TYPE_1__* mds; } ;
struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int commit_mutex; } ;
struct TYPE_3__ {int list; int ncommit; } ;


 int INT_MAX ;
 TYPE_2__* NFS_I (int ) ;
 scalar_t__ atomic_long_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfs_scan_commit_list (int *,struct list_head*,struct nfs_commit_info*,int const) ;
 scalar_t__ pnfs_scan_commit_lists (struct inode*,struct nfs_commit_info*,int const) ;

int
nfs_scan_commit(struct inode *inode, struct list_head *dst,
  struct nfs_commit_info *cinfo)
{
 int ret = 0;

 if (!atomic_long_read(&cinfo->mds->ncommit))
  return 0;
 mutex_lock(&NFS_I(cinfo->inode)->commit_mutex);
 if (atomic_long_read(&cinfo->mds->ncommit) > 0) {
  const int max = INT_MAX;

  ret = nfs_scan_commit_list(&cinfo->mds->list, dst,
        cinfo, max);
  ret += pnfs_scan_commit_lists(inode, cinfo, max - ret);
 }
 mutex_unlock(&NFS_I(cinfo->inode)->commit_mutex);
 return ret;
}
