
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_rtblock_t ;
typedef int xfs_extlen_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;


 int xfs_rtcheck_range (struct xfs_mount*,struct xfs_trans*,int ,int ,int,int *,int*) ;

int
xfs_rtalloc_extent_is_free(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 xfs_rtblock_t start,
 xfs_extlen_t len,
 bool *is_free)
{
 xfs_rtblock_t end;
 int matches;
 int error;

 error = xfs_rtcheck_range(mp, tp, start, len, 1, &end, &matches);
 if (error)
  return error;

 *is_free = matches;
 return 0;
}
