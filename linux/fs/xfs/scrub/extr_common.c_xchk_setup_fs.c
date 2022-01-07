
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct xfs_scrub {int dummy; } ;
struct xfs_inode {int dummy; } ;


 int xchk_trans_alloc (struct xfs_scrub*,int ) ;
 int xrep_calc_ag_resblks (struct xfs_scrub*) ;

int
xchk_setup_fs(
 struct xfs_scrub *sc,
 struct xfs_inode *ip)
{
 uint resblks;

 resblks = xrep_calc_ag_resblks(sc);
 return xchk_trans_alloc(sc, resblks);
}
