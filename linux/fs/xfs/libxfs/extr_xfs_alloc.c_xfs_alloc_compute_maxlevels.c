
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sb_agblocks; } ;
struct TYPE_5__ {TYPE_1__ m_sb; int m_alloc_mnr; int m_ag_maxlevels; } ;
typedef TYPE_2__ xfs_mount_t ;


 int xfs_btree_compute_maxlevels (int ,int) ;

void
xfs_alloc_compute_maxlevels(
 xfs_mount_t *mp)
{
 mp->m_ag_maxlevels = xfs_btree_compute_maxlevels(mp->m_alloc_mnr,
   (mp->m_sb.sb_agblocks + 1) / 2);
}
