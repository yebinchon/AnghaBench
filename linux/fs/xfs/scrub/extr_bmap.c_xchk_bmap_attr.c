
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_scrub {int dummy; } ;


 int XFS_ATTR_FORK ;
 int xchk_bmap (struct xfs_scrub*,int ) ;

int
xchk_bmap_attr(
 struct xfs_scrub *sc)
{
 return xchk_bmap(sc, XFS_ATTR_FORK);
}
