
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_dir2_data_unused {int length; int freetag; } ;
typedef struct xfs_dir2_data_unused xfs_dir2_data_unused_t ;
typedef int uint ;
struct xfs_inode {TYPE_1__* d_ops; } ;
struct xfs_dir2_leaf_entry {int dummy; } ;
struct xfs_dir2_data_hdr {int dummy; } ;
struct xfs_dir2_data_free {int offset; int length; } ;
struct xfs_dir2_block_tail {scalar_t__ stale; } ;
typedef int __be16 ;
struct TYPE_2__ {struct xfs_dir2_data_free* (* data_bestfree_p ) (struct xfs_dir2_data_hdr*) ;} ;


 int XFS_DIR2_DATA_FREE_TAG ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (scalar_t__) ;
 struct xfs_dir2_data_free* stub1 (struct xfs_dir2_data_hdr*) ;

__attribute__((used)) static void
xfs_dir2_block_need_space(
 struct xfs_inode *dp,
 struct xfs_dir2_data_hdr *hdr,
 struct xfs_dir2_block_tail *btp,
 struct xfs_dir2_leaf_entry *blp,
 __be16 **tagpp,
 struct xfs_dir2_data_unused **dupp,
 struct xfs_dir2_data_unused **enddupp,
 int *compact,
 int len)
{
 struct xfs_dir2_data_free *bf;
 __be16 *tagp = ((void*)0);
 struct xfs_dir2_data_unused *dup = ((void*)0);
 struct xfs_dir2_data_unused *enddup = ((void*)0);

 *compact = 0;
 bf = dp->d_ops->data_bestfree_p(hdr);




 if (btp->stale) {
  if (be16_to_cpu(bf[0].length) >= len) {



   dup = (xfs_dir2_data_unused_t *)
         ((char *)hdr + be16_to_cpu(bf[0].offset));
   goto out;
  }





  *compact = 1;
  tagp = (__be16 *)blp - 1;


  dup = (xfs_dir2_data_unused_t *)((char *)hdr + be16_to_cpu(*tagp));





  if (be16_to_cpu(dup->freetag) == XFS_DIR2_DATA_FREE_TAG) {
   if (be16_to_cpu(dup->length) + (be32_to_cpu(btp->stale) - 1) *
       (uint)sizeof(*blp) < len)
    dup = ((void*)0);
  } else if ((be32_to_cpu(btp->stale) - 1) * (uint)sizeof(*blp) < len)
   dup = ((void*)0);
  else
   dup = (xfs_dir2_data_unused_t *)blp;
  goto out;
 }





 tagp = (__be16 *)blp - 1;


 enddup = (xfs_dir2_data_unused_t *)((char *)hdr + be16_to_cpu(*tagp));






 if (be16_to_cpu(enddup->freetag) == XFS_DIR2_DATA_FREE_TAG) {



  dup = (xfs_dir2_data_unused_t *)
        ((char *)hdr + be16_to_cpu(bf[0].offset));
  if (dup != enddup) {



   if (be16_to_cpu(dup->length) < len)
    dup = ((void*)0);
   goto out;
  }




  if (be16_to_cpu(dup->length) < len + (uint)sizeof(*blp)) {



   if (be16_to_cpu(bf[1].length) >= len)
    dup = (xfs_dir2_data_unused_t *)
          ((char *)hdr + be16_to_cpu(bf[1].offset));
   else
    dup = ((void*)0);
  }
 }
out:
 *tagpp = tagp;
 *dupp = dup;
 *enddupp = enddup;
}
