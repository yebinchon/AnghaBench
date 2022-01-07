
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct pnfs_commit_bucket {int * wlseg; int * clseg; struct list_head committing; struct list_head written; } ;
struct nfs_commit_info {TYPE_1__* ds; int inode; } ;
struct TYPE_4__ {int commit_mutex; } ;
struct TYPE_3__ {int nwritten; int ncommitting; } ;


 TYPE_2__* NFS_I (int ) ;
 scalar_t__ list_empty (struct list_head*) ;
 int lockdep_assert_held (int *) ;
 int nfs_scan_commit_list (struct list_head*,struct list_head*,struct nfs_commit_info*,int) ;
 int * pnfs_get_lseg (int *) ;
 int pnfs_put_lseg (int *) ;

__attribute__((used)) static int
pnfs_generic_scan_ds_commit_list(struct pnfs_commit_bucket *bucket,
     struct nfs_commit_info *cinfo,
     int max)
{
 struct list_head *src = &bucket->written;
 struct list_head *dst = &bucket->committing;
 int ret;

 lockdep_assert_held(&NFS_I(cinfo->inode)->commit_mutex);
 ret = nfs_scan_commit_list(src, dst, cinfo, max);
 if (ret) {
  cinfo->ds->nwritten -= ret;
  cinfo->ds->ncommitting += ret;
  if (bucket->clseg == ((void*)0))
   bucket->clseg = pnfs_get_lseg(bucket->wlseg);
  if (list_empty(src)) {
   pnfs_put_lseg(bucket->wlseg);
   bucket->wlseg = ((void*)0);
  }
 }
 return ret;
}
