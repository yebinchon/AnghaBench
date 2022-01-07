
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_bmap_dmnr; } ;


 unsigned long long xfs_btree_calc_size (int ,unsigned long long) ;

unsigned long long
xfs_bmbt_calc_size(
 struct xfs_mount *mp,
 unsigned long long len)
{
 return xfs_btree_calc_size(mp->m_bmap_dmnr, len);
}
