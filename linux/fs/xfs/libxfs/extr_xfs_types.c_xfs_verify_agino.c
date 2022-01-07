
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_agnumber_t ;
typedef scalar_t__ xfs_agino_t ;
struct xfs_mount {int dummy; } ;


 int xfs_agino_range (struct xfs_mount*,int ,scalar_t__*,scalar_t__*) ;

bool
xfs_verify_agino(
 struct xfs_mount *mp,
 xfs_agnumber_t agno,
 xfs_agino_t agino)
{
 xfs_agino_t first;
 xfs_agino_t last;

 xfs_agino_range(mp, agno, &first, &last);
 return agino >= first && agino <= last;
}
