
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_extlen_t ;
struct xfs_mount {int dummy; } ;
struct TYPE_2__ {int inobt_mnr; } ;


 TYPE_1__* M_IGEO (struct xfs_mount*) ;
 int xfs_btree_calc_size (int ,unsigned long long) ;

xfs_extlen_t
xfs_iallocbt_calc_size(
 struct xfs_mount *mp,
 unsigned long long len)
{
 return xfs_btree_calc_size(M_IGEO(mp)->inobt_mnr, len);
}
