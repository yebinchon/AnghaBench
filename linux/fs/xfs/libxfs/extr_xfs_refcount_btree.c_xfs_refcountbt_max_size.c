
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_extlen_t ;
typedef int xfs_agblock_t ;
struct xfs_mount {scalar_t__* m_refc_mxr; } ;


 int xfs_refcountbt_calc_size (struct xfs_mount*,int ) ;

xfs_extlen_t
xfs_refcountbt_max_size(
 struct xfs_mount *mp,
 xfs_agblock_t agblocks)
{

 if (mp->m_refc_mxr[0] == 0)
  return 0;

 return xfs_refcountbt_calc_size(mp, agblocks);
}
