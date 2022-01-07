
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_agnumber_t ;
typedef scalar_t__ xfs_agino_t ;
struct xfs_mount {int dummy; } ;


 scalar_t__ NULLAGINO ;
 scalar_t__ xfs_verify_agino (struct xfs_mount*,int ,scalar_t__) ;

bool
xfs_verify_agino_or_null(
 struct xfs_mount *mp,
 xfs_agnumber_t agno,
 xfs_agino_t agino)
{
 return agino == NULLAGINO || xfs_verify_agino(mp, agno, agino);
}
