
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xfs_failaddr_t ;
typedef int xfs_dir2_leaf_tail_t ;
struct xfs_mount {struct xfs_da_geometry* m_dir_geo; } ;
struct xfs_inode {int dummy; } ;
struct xfs_dir_ops {size_t (* leaf_max_ents ) (struct xfs_da_geometry*) ;struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (struct xfs_dir2_leaf*) ;int (* leaf_hdr_from_disk ) (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf*) ;} ;
struct xfs_dir3_icleaf_hdr {size_t count; scalar_t__ magic; int stale; } ;
struct xfs_dir2_leaf_entry {scalar_t__ address; int hashval; } ;
struct xfs_dir2_leaf {int dummy; } ;
struct xfs_da_geometry {int dummy; } ;


 scalar_t__ XFS_DIR2_LEAF1_MAGIC ;
 int XFS_DIR2_NULL_DATAPTR ;
 scalar_t__ XFS_DIR3_LEAF1_MAGIC ;
 int * __this_address ;
 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ cpu_to_be32 (int ) ;
 int stub1 (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf*) ;
 struct xfs_dir2_leaf_entry* stub2 (struct xfs_dir2_leaf*) ;
 size_t stub3 (struct xfs_da_geometry*) ;
 scalar_t__ xfs_dir2_leaf_bests_p (int *) ;
 int * xfs_dir2_leaf_tail_p (struct xfs_da_geometry*,struct xfs_dir2_leaf*) ;
 struct xfs_dir_ops* xfs_dir_get_ops (struct xfs_mount*,struct xfs_inode*) ;

xfs_failaddr_t
xfs_dir3_leaf_check_int(
 struct xfs_mount *mp,
 struct xfs_inode *dp,
 struct xfs_dir3_icleaf_hdr *hdr,
 struct xfs_dir2_leaf *leaf)
{
 struct xfs_dir2_leaf_entry *ents;
 xfs_dir2_leaf_tail_t *ltp;
 int stale;
 int i;
 const struct xfs_dir_ops *ops;
 struct xfs_dir3_icleaf_hdr leafhdr;
 struct xfs_da_geometry *geo = mp->m_dir_geo;





 ops = xfs_dir_get_ops(mp, dp);

 if (!hdr) {
  ops->leaf_hdr_from_disk(&leafhdr, leaf);
  hdr = &leafhdr;
 }

 ents = ops->leaf_ents_p(leaf);
 ltp = xfs_dir2_leaf_tail_p(geo, leaf);






 if (hdr->count > ops->leaf_max_ents(geo))
  return __this_address;


 if ((hdr->magic == XFS_DIR2_LEAF1_MAGIC ||
      hdr->magic == XFS_DIR3_LEAF1_MAGIC) &&
     (char *)&ents[hdr->count] > (char *)xfs_dir2_leaf_bests_p(ltp))
  return __this_address;


 for (i = stale = 0; i < hdr->count; i++) {
  if (i + 1 < hdr->count) {
   if (be32_to_cpu(ents[i].hashval) >
     be32_to_cpu(ents[i + 1].hashval))
    return __this_address;
  }
  if (ents[i].address == cpu_to_be32(XFS_DIR2_NULL_DATAPTR))
   stale++;
 }
 if (hdr->stale != stale)
  return __this_address;
 return ((void*)0);
}
