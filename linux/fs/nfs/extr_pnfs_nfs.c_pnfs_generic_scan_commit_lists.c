
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_commit_info {TYPE_1__* ds; int inode; } ;
struct TYPE_4__ {int commit_mutex; } ;
struct TYPE_3__ {int nbuckets; int * buckets; } ;


 TYPE_2__* NFS_I (int ) ;
 int lockdep_assert_held (int *) ;
 int pnfs_generic_scan_ds_commit_list (int *,struct nfs_commit_info*,int) ;

int pnfs_generic_scan_commit_lists(struct nfs_commit_info *cinfo,
       int max)
{
 int i, rv = 0, cnt;

 lockdep_assert_held(&NFS_I(cinfo->inode)->commit_mutex);
 for (i = 0; i < cinfo->ds->nbuckets && max != 0; i++) {
  cnt = pnfs_generic_scan_ds_commit_list(&cinfo->ds->buckets[i],
             cinfo, max);
  max -= cnt;
  rv += cnt;
 }
 return rv;
}
