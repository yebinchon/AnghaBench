
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dir2_leaf_tail_t ;
typedef int xfs_dir2_leaf_entry_t ;
typedef int xfs_dir2_data_off_t ;
struct xfs_dir3_leaf_hdr {int dummy; } ;
struct xfs_dir3_icleaf_hdr {int count; int stale; scalar_t__ magic; } ;
struct xfs_dir2_leaf_hdr {int dummy; } ;


 scalar_t__ XFS_DIR2_LEAF1_MAGIC ;
 scalar_t__ XFS_DIR2_LEAFN_MAGIC ;

__attribute__((used)) static inline size_t
xfs_dir3_leaf_size(
 struct xfs_dir3_icleaf_hdr *hdr,
 int counts)
{
 int entries;
 int hdrsize;

 entries = hdr->count - hdr->stale;
 if (hdr->magic == XFS_DIR2_LEAF1_MAGIC ||
     hdr->magic == XFS_DIR2_LEAFN_MAGIC)
  hdrsize = sizeof(struct xfs_dir2_leaf_hdr);
 else
  hdrsize = sizeof(struct xfs_dir3_leaf_hdr);

 return hdrsize + entries * sizeof(xfs_dir2_leaf_entry_t)
                + counts * sizeof(xfs_dir2_data_off_t)
         + sizeof(xfs_dir2_leaf_tail_t);
}
