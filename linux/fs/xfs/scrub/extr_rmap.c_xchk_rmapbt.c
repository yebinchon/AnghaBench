
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rmap_cur; } ;
struct xfs_scrub {TYPE_1__ sa; } ;


 int XFS_RMAP_OINFO_AG ;
 int xchk_btree (struct xfs_scrub*,int ,int ,int *,int *) ;
 int xchk_rmapbt_rec ;

int
xchk_rmapbt(
 struct xfs_scrub *sc)
{
 return xchk_btree(sc, sc->sa.rmap_cur, xchk_rmapbt_rec,
   &XFS_RMAP_OINFO_AG, ((void*)0));
}
