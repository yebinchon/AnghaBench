
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_page {scalar_t__ wb_page; } ;
struct nfs_commit_info {int inode; TYPE_1__* mds; } ;
struct TYPE_4__ {int commit_mutex; } ;
struct TYPE_3__ {int list; } ;


 TYPE_2__* NFS_I (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfs_mark_page_unstable (scalar_t__,struct nfs_commit_info*) ;
 int nfs_request_add_commit_list_locked (struct nfs_page*,int *,struct nfs_commit_info*) ;

void
nfs_request_add_commit_list(struct nfs_page *req, struct nfs_commit_info *cinfo)
{
 mutex_lock(&NFS_I(cinfo->inode)->commit_mutex);
 nfs_request_add_commit_list_locked(req, &cinfo->mds->list, cinfo);
 mutex_unlock(&NFS_I(cinfo->inode)->commit_mutex);
 if (req->wb_page)
  nfs_mark_page_unstable(req->wb_page, cinfo);
}
