
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dir2_leaf_tail {int dummy; } ;
struct xfs_dir2_leaf {int dummy; } ;
struct xfs_da_geometry {int blksize; } ;



__attribute__((used)) static inline struct xfs_dir2_leaf_tail *
xfs_dir2_leaf_tail_p(struct xfs_da_geometry *geo, struct xfs_dir2_leaf *lp)
{
 return (struct xfs_dir2_leaf_tail *)
  ((char *)lp + geo->blksize -
    sizeof(struct xfs_dir2_leaf_tail));
}
