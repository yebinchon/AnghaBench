
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct xfs_scrub {int tp; int mp; TYPE_1__* sm; } ;
struct TYPE_4__ {int tr_itruncate; } ;
struct TYPE_3__ {int sm_flags; } ;


 TYPE_2__* M_RES (int ) ;
 int XFS_SCRUB_IFLAG_REPAIR ;
 int xfs_trans_alloc (int ,int *,int ,int ,int ,int *) ;
 int xfs_trans_alloc_empty (int ,int *) ;

int
xchk_trans_alloc(
 struct xfs_scrub *sc,
 uint resblks)
{
 if (sc->sm->sm_flags & XFS_SCRUB_IFLAG_REPAIR)
  return xfs_trans_alloc(sc->mp, &M_RES(sc->mp)->tr_itruncate,
    resblks, 0, 0, &sc->tp);

 return xfs_trans_alloc_empty(sc->mp, &sc->tp);
}
