
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_scrub {int dummy; } ;
struct xfs_inode {int dummy; } ;


 int xchk_setup_inode_contents (struct xfs_scrub*,struct xfs_inode*,int ) ;

int
xchk_setup_directory(
 struct xfs_scrub *sc,
 struct xfs_inode *ip)
{
 return xchk_setup_inode_contents(sc, ip, 0);
}
