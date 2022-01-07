
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_scrub {int ip; } ;


 int ENOENT ;
 int XFS_COW_FORK ;
 int xchk_bmap (struct xfs_scrub*,int ) ;
 int xfs_is_reflink_inode (int ) ;

int
xchk_bmap_cow(
 struct xfs_scrub *sc)
{
 if (!xfs_is_reflink_inode(sc->ip))
  return -ENOENT;

 return xchk_bmap(sc, XFS_COW_FORK);
}
