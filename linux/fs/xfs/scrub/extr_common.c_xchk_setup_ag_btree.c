
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_scrub {int sa; TYPE_1__* sm; struct xfs_mount* mp; } ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {int dummy; } ;
struct TYPE_2__ {int sm_agno; } ;


 int xchk_ag_init (struct xfs_scrub*,int ,int *) ;
 int xchk_checkpoint_log (struct xfs_mount*) ;
 int xchk_setup_fs (struct xfs_scrub*,struct xfs_inode*) ;

int
xchk_setup_ag_btree(
 struct xfs_scrub *sc,
 struct xfs_inode *ip,
 bool force_log)
{
 struct xfs_mount *mp = sc->mp;
 int error;







 if (force_log) {
  error = xchk_checkpoint_log(mp);
  if (error)
   return error;
 }

 error = xchk_setup_fs(sc, ip);
 if (error)
  return error;

 return xchk_ag_init(sc, sc->sm->sm_agno, &sc->sa);
}
