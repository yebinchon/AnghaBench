
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pnfs_layout_segment {int dummy; } ;
struct TYPE_5__ {int committed; } ;
struct pnfs_commit_bucket {TYPE_2__ direct_verf; int committing; int written; } ;
struct nfs_commit_info {TYPE_3__* inode; TYPE_1__* ds; } ;
struct nfs4_ff_layout_segment {int dummy; } ;
typedef int gfp_t ;
struct TYPE_6__ {int i_lock; } ;
struct TYPE_4__ {int nbuckets; struct pnfs_commit_bucket* buckets; } ;


 int ENOMEM ;
 struct nfs4_ff_layout_segment* FF_LAYOUT_LSEG (struct pnfs_layout_segment*) ;
 int FF_LAYOUT_MIRROR_COUNT (struct pnfs_layout_segment*) ;
 int INIT_LIST_HEAD (int *) ;
 int NFS_INVALID_STABLE_HOW ;
 int ff_layout_get_lseg_count (struct nfs4_ff_layout_segment*) ;
 struct pnfs_commit_bucket* kcalloc (int,int,int ) ;
 int kfree (struct pnfs_commit_bucket*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
ff_layout_alloc_commit_info(struct pnfs_layout_segment *lseg,
       struct nfs_commit_info *cinfo,
       gfp_t gfp_flags)
{
 struct nfs4_ff_layout_segment *fls = FF_LAYOUT_LSEG(lseg);
 struct pnfs_commit_bucket *buckets;
 int size;

 if (cinfo->ds->nbuckets != 0) {





  return 0;
 }

 size = ff_layout_get_lseg_count(fls) * FF_LAYOUT_MIRROR_COUNT(lseg);

 buckets = kcalloc(size, sizeof(struct pnfs_commit_bucket),
     gfp_flags);
 if (!buckets)
  return -ENOMEM;
 else {
  int i;

  spin_lock(&cinfo->inode->i_lock);
  if (cinfo->ds->nbuckets != 0)
   kfree(buckets);
  else {
   cinfo->ds->buckets = buckets;
   cinfo->ds->nbuckets = size;
   for (i = 0; i < size; i++) {
    INIT_LIST_HEAD(&buckets[i].written);
    INIT_LIST_HEAD(&buckets[i].committing);

    buckets[i].direct_verf.committed =
     NFS_INVALID_STABLE_HOW;
   }
  }
  spin_unlock(&cinfo->inode->i_lock);
  return 0;
 }
}
