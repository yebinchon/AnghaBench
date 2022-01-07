
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sb_agblocks; } ;
struct xfs_mount {TYPE_1__ m_sb; int m_refc_mnr; int m_refc_maxlevels; } ;


 int xfs_btree_compute_maxlevels (int ,int ) ;

void
xfs_refcountbt_compute_maxlevels(
 struct xfs_mount *mp)
{
 mp->m_refc_maxlevels = xfs_btree_compute_maxlevels(
   mp->m_refc_mnr, mp->m_sb.sb_agblocks);
}
