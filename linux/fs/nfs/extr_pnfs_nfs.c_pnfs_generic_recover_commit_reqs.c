
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pnfs_layout_segment {int dummy; } ;
struct pnfs_commit_bucket {struct pnfs_layout_segment* wlseg; int written; } ;
struct nfs_commit_info {TYPE_1__* ds; int inode; } ;
struct list_head {int dummy; } ;
struct TYPE_4__ {int commit_mutex; } ;
struct TYPE_3__ {int nbuckets; int nwritten; struct pnfs_commit_bucket* buckets; } ;


 TYPE_2__* NFS_I (int ) ;
 scalar_t__ list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 int nfs_scan_commit_list (int *,struct list_head*,struct nfs_commit_info*,int ) ;
 int pnfs_put_lseg (struct pnfs_layout_segment*) ;

void pnfs_generic_recover_commit_reqs(struct list_head *dst,
          struct nfs_commit_info *cinfo)
{
 struct pnfs_commit_bucket *b;
 struct pnfs_layout_segment *freeme;
 int nwritten;
 int i;

 lockdep_assert_held(&NFS_I(cinfo->inode)->commit_mutex);
restart:
 for (i = 0, b = cinfo->ds->buckets; i < cinfo->ds->nbuckets; i++, b++) {
  nwritten = nfs_scan_commit_list(&b->written, dst, cinfo, 0);
  if (!nwritten)
   continue;
  cinfo->ds->nwritten -= nwritten;
  if (list_empty(&b->written)) {
   freeme = b->wlseg;
   b->wlseg = ((void*)0);
   pnfs_put_lseg(freeme);
   goto restart;
  }
 }
}
