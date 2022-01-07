
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_extlen_t ;
struct xfs_mount {int m_refc_mnr; } ;


 int xfs_btree_calc_size (int ,unsigned long long) ;

xfs_extlen_t
xfs_refcountbt_calc_size(
 struct xfs_mount *mp,
 unsigned long long len)
{
 return xfs_btree_calc_size(mp->m_refc_mnr, len);
}
