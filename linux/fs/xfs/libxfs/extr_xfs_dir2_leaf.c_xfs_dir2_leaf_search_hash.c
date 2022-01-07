
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xfs_dir2_leaf_t ;
struct xfs_dir2_leaf_entry {int hashval; } ;
typedef struct xfs_dir2_leaf_entry xfs_dir2_leaf_entry_t ;
typedef scalar_t__ xfs_dahash_t ;
struct TYPE_7__ {scalar_t__ hashval; TYPE_2__* dp; } ;
typedef TYPE_3__ xfs_da_args_t ;
struct xfs_dir3_icleaf_hdr {int count; } ;
struct xfs_buf {int * b_addr; } ;
struct TYPE_6__ {TYPE_1__* d_ops; } ;
struct TYPE_5__ {int (* leaf_hdr_from_disk ) (struct xfs_dir3_icleaf_hdr*,int *) ;struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (int *) ;} ;


 scalar_t__ be32_to_cpu (int ) ;
 struct xfs_dir2_leaf_entry* stub1 (int *) ;
 int stub2 (struct xfs_dir3_icleaf_hdr*,int *) ;

int
xfs_dir2_leaf_search_hash(
 xfs_da_args_t *args,
 struct xfs_buf *lbp)
{
 xfs_dahash_t hash=0;
 xfs_dahash_t hashwant;
 int high;
 int low;
 xfs_dir2_leaf_t *leaf;
 xfs_dir2_leaf_entry_t *lep;
 int mid=0;
 struct xfs_dir2_leaf_entry *ents;
 struct xfs_dir3_icleaf_hdr leafhdr;

 leaf = lbp->b_addr;
 ents = args->dp->d_ops->leaf_ents_p(leaf);
 args->dp->d_ops->leaf_hdr_from_disk(&leafhdr, leaf);





 for (lep = ents, low = 0, high = leafhdr.count - 1,
  hashwant = args->hashval;
      low <= high; ) {
  mid = (low + high) >> 1;
  if ((hash = be32_to_cpu(lep[mid].hashval)) == hashwant)
   break;
  if (hash < hashwant)
   low = mid + 1;
  else
   high = mid - 1;
 }



 if (hash == hashwant) {
  while (mid > 0 && be32_to_cpu(lep[mid - 1].hashval) == hashwant) {
   mid--;
  }
 }



 else if (hash < hashwant)
  mid++;
 return mid;
}
