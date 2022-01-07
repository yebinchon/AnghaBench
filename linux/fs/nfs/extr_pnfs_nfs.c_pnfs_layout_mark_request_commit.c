
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct pnfs_layout_segment {int dummy; } ;
struct list_head {int dummy; } ;
struct pnfs_commit_bucket {int * wlseg; struct list_head written; } ;
struct nfs_page {int wb_page; int wb_flags; } ;
struct nfs_commit_info {int inode; TYPE_2__* ds; TYPE_1__* completion_ops; } ;
struct TYPE_6__ {int commit_mutex; } ;
struct TYPE_5__ {int nwritten; struct pnfs_commit_bucket* buckets; } ;
struct TYPE_4__ {int (* resched_write ) (struct nfs_commit_info*,struct nfs_page*) ;} ;


 TYPE_3__* NFS_I (int ) ;
 int PG_COMMIT_TO_DS ;
 int WARN_ON_ONCE (int ) ;
 scalar_t__ list_empty (struct list_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfs_mark_page_unstable (int ,struct nfs_commit_info*) ;
 int nfs_request_add_commit_list_locked (struct nfs_page*,struct list_head*,struct nfs_commit_info*) ;
 int * pnfs_get_lseg (struct pnfs_layout_segment*) ;
 int pnfs_is_valid_lseg (struct pnfs_layout_segment*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct nfs_commit_info*,struct nfs_page*) ;

void
pnfs_layout_mark_request_commit(struct nfs_page *req,
    struct pnfs_layout_segment *lseg,
    struct nfs_commit_info *cinfo,
    u32 ds_commit_idx)
{
 struct list_head *list;
 struct pnfs_commit_bucket *buckets;

 mutex_lock(&NFS_I(cinfo->inode)->commit_mutex);
 buckets = cinfo->ds->buckets;
 list = &buckets[ds_commit_idx].written;
 if (list_empty(list)) {
  if (!pnfs_is_valid_lseg(lseg)) {
   mutex_unlock(&NFS_I(cinfo->inode)->commit_mutex);
   cinfo->completion_ops->resched_write(cinfo, req);
   return;
  }






  WARN_ON_ONCE(buckets[ds_commit_idx].wlseg != ((void*)0));
  buckets[ds_commit_idx].wlseg = pnfs_get_lseg(lseg);
 }
 set_bit(PG_COMMIT_TO_DS, &req->wb_flags);
 cinfo->ds->nwritten++;

 nfs_request_add_commit_list_locked(req, list, cinfo);
 mutex_unlock(&NFS_I(cinfo->inode)->commit_mutex);
 nfs_mark_page_unstable(req->wb_page, cinfo);
}
