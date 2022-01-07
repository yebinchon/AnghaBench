
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct xfs_dir2_leaf_hdr {int dummy; } ;
struct xfs_dir2_leaf_entry {int dummy; } ;
struct xfs_da_geometry {int blksize; } ;



__attribute__((used)) static int
xfs_dir2_max_leaf_ents(struct xfs_da_geometry *geo)
{
 return (geo->blksize - sizeof(struct xfs_dir2_leaf_hdr)) /
  (uint)sizeof(struct xfs_dir2_leaf_entry);
}
