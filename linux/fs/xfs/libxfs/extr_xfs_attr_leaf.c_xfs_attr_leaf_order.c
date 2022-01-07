
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_attr_geo; } ;
struct xfs_buf {int b_addr; struct xfs_mount* b_mount; } ;
struct xfs_attr3_icleaf_hdr {int dummy; } ;


 int xfs_attr3_leaf_hdr_from_disk (int ,struct xfs_attr3_icleaf_hdr*,int ) ;
 int xfs_attr3_leaf_order (struct xfs_buf*,struct xfs_attr3_icleaf_hdr*,struct xfs_buf*,struct xfs_attr3_icleaf_hdr*) ;

int
xfs_attr_leaf_order(
 struct xfs_buf *leaf1_bp,
 struct xfs_buf *leaf2_bp)
{
 struct xfs_attr3_icleaf_hdr ichdr1;
 struct xfs_attr3_icleaf_hdr ichdr2;
 struct xfs_mount *mp = leaf1_bp->b_mount;

 xfs_attr3_leaf_hdr_from_disk(mp->m_attr_geo, &ichdr1, leaf1_bp->b_addr);
 xfs_attr3_leaf_hdr_from_disk(mp->m_attr_geo, &ichdr2, leaf2_bp->b_addr);
 return xfs_attr3_leaf_order(leaf1_bp, &ichdr1, leaf2_bp, &ichdr2);
}
