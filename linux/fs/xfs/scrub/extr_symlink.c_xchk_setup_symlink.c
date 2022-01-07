
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_scrub {int buf; } ;
struct xfs_inode {int dummy; } ;


 int ENOMEM ;
 scalar_t__ XFS_SYMLINK_MAXLEN ;
 int kmem_zalloc_large (scalar_t__,int ) ;
 int xchk_setup_inode_contents (struct xfs_scrub*,struct xfs_inode*,int ) ;

int
xchk_setup_symlink(
 struct xfs_scrub *sc,
 struct xfs_inode *ip)
{

 sc->buf = kmem_zalloc_large(XFS_SYMLINK_MAXLEN + 1, 0);
 if (!sc->buf)
  return -ENOMEM;

 return xchk_setup_inode_contents(sc, ip, 0);
}
