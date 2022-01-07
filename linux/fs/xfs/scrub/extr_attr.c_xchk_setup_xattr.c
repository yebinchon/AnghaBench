
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_scrub {int flags; } ;
struct xfs_inode {int dummy; } ;


 int XATTR_SIZE_MAX ;
 int XCHK_TRY_HARDER ;
 int xchk_setup_inode_contents (struct xfs_scrub*,struct xfs_inode*,int ) ;
 int xchk_setup_xattr_buf (struct xfs_scrub*,int ,int ) ;

int
xchk_setup_xattr(
 struct xfs_scrub *sc,
 struct xfs_inode *ip)
{
 int error;






 if (sc->flags & XCHK_TRY_HARDER) {
  error = xchk_setup_xattr_buf(sc, XATTR_SIZE_MAX, 0);
  if (error)
   return error;
 }

 return xchk_setup_inode_contents(sc, ip, 0);
}
