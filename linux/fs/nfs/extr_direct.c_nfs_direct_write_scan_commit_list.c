
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nfs_commit_info {int inode; TYPE_2__* mds; TYPE_3__* ds; } ;
struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_10__ {int commit_mutex; } ;
struct TYPE_9__ {TYPE_1__* pnfs_curr_ld; } ;
struct TYPE_8__ {scalar_t__ nwritten; } ;
struct TYPE_7__ {int list; } ;
struct TYPE_6__ {int (* recover_commit_reqs ) (struct list_head*,struct nfs_commit_info*) ;} ;


 TYPE_5__* NFS_I (int ) ;
 TYPE_4__* NFS_SERVER (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfs_scan_commit_list (int *,struct list_head*,struct nfs_commit_info*,int ) ;
 int stub1 (struct list_head*,struct nfs_commit_info*) ;

__attribute__((used)) static void
nfs_direct_write_scan_commit_list(struct inode *inode,
      struct list_head *list,
      struct nfs_commit_info *cinfo)
{
 mutex_lock(&NFS_I(cinfo->inode)->commit_mutex);




 nfs_scan_commit_list(&cinfo->mds->list, list, cinfo, 0);
 mutex_unlock(&NFS_I(cinfo->inode)->commit_mutex);
}
