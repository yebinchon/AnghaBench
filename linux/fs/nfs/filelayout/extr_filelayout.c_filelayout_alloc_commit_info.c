
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pnfs_layout_segment {int dummy; } ;
struct TYPE_8__ {int committed; } ;
struct pnfs_commit_bucket {int clseg; int wlseg; TYPE_2__ direct_verf; int committing; int written; } ;
struct nfs_commit_info {TYPE_5__* inode; TYPE_4__* ds; } ;
struct nfs4_filelayout_segment {scalar_t__ stripe_type; TYPE_1__* dsaddr; scalar_t__ commit_through_mds; } ;
typedef int gfp_t ;
struct TYPE_9__ {int committed; } ;
struct TYPE_12__ {int clseg; int wlseg; TYPE_3__ direct_verf; int committing; int written; } ;
struct TYPE_11__ {int i_lock; } ;
struct TYPE_10__ {int nbuckets; TYPE_6__* buckets; } ;
struct TYPE_7__ {int ds_num; int stripe_count; } ;


 int ENOMEM ;
 struct nfs4_filelayout_segment* FILELAYOUT_LSEG (struct pnfs_layout_segment*) ;
 int INIT_LIST_HEAD (int *) ;
 int NFS_INVALID_STABLE_HOW ;
 scalar_t__ STRIPE_SPARSE ;
 struct pnfs_commit_bucket* kcalloc (int,int,int ) ;
 int kfree (struct pnfs_commit_bucket*) ;
 int list_splice (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int swap (TYPE_6__*,struct pnfs_commit_bucket*) ;

__attribute__((used)) static int
filelayout_alloc_commit_info(struct pnfs_layout_segment *lseg,
        struct nfs_commit_info *cinfo,
        gfp_t gfp_flags)
{
 struct nfs4_filelayout_segment *fl = FILELAYOUT_LSEG(lseg);
 struct pnfs_commit_bucket *buckets;
 int size, i;

 if (fl->commit_through_mds)
  return 0;

 size = (fl->stripe_type == STRIPE_SPARSE) ?
  fl->dsaddr->ds_num : fl->dsaddr->stripe_count;

 if (cinfo->ds->nbuckets >= size) {






  return 0;
 }

 buckets = kcalloc(size, sizeof(struct pnfs_commit_bucket),
     gfp_flags);
 if (!buckets)
  return -ENOMEM;
 for (i = 0; i < size; i++) {
  INIT_LIST_HEAD(&buckets[i].written);
  INIT_LIST_HEAD(&buckets[i].committing);

  buckets[i].direct_verf.committed = NFS_INVALID_STABLE_HOW;
 }

 spin_lock(&cinfo->inode->i_lock);
 if (cinfo->ds->nbuckets >= size)
  goto out;
 for (i = 0; i < cinfo->ds->nbuckets; i++) {
  list_splice(&cinfo->ds->buckets[i].written,
       &buckets[i].written);
  list_splice(&cinfo->ds->buckets[i].committing,
       &buckets[i].committing);
  buckets[i].direct_verf.committed =
   cinfo->ds->buckets[i].direct_verf.committed;
  buckets[i].wlseg = cinfo->ds->buckets[i].wlseg;
  buckets[i].clseg = cinfo->ds->buckets[i].clseg;
 }
 swap(cinfo->ds->buckets, buckets);
 cinfo->ds->nbuckets = size;
out:
 spin_unlock(&cinfo->inode->i_lock);
 kfree(buckets);
 return 0;
}
