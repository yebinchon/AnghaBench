
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_agblock_t ;
struct TYPE_2__ {int refc_cur; } ;
struct xfs_scrub {TYPE_1__ sa; } ;


 int XFS_RMAP_OINFO_REFC ;
 int xchk_btree (struct xfs_scrub*,int ,int ,int *,int *) ;
 int xchk_refcount_xref_rmap (struct xfs_scrub*,int ) ;
 int xchk_refcountbt_rec ;

int
xchk_refcountbt(
 struct xfs_scrub *sc)
{
 xfs_agblock_t cow_blocks = 0;
 int error;

 error = xchk_btree(sc, sc->sa.refc_cur, xchk_refcountbt_rec,
   &XFS_RMAP_OINFO_REFC, &cow_blocks);
 if (error)
  return error;

 xchk_refcount_xref_rmap(sc, cow_blocks);

 return 0;
}
