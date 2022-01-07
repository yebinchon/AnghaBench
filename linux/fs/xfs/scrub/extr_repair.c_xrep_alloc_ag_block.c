
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_fsblock_t ;
typedef int xfs_agblock_t ;
struct TYPE_2__ {int agno; int agf_bp; } ;
struct xfs_scrub {TYPE_1__ sa; int mp; int tp; } ;
struct xfs_owner_info {int dummy; } ;
struct xfs_alloc_arg {scalar_t__ fsbno; int minlen; int maxlen; int prod; int resv; int len; int type; int mp; struct xfs_owner_info oinfo; int tp; int member_0; } ;
typedef enum xfs_ag_resv_type { ____Placeholder_xfs_ag_resv_type } xfs_ag_resv_type ;


 int ASSERT (int) ;
 int ENOSPC ;
 int NULLAGBLOCK ;
 scalar_t__ NULLFSBLOCK ;
 void* XFS_AGB_TO_FSB (int ,int ,int ) ;


 int XFS_ALLOCTYPE_THIS_AG ;
 int xfs_ag_resv_rmapbt_alloc (int ,int ) ;
 int xfs_alloc_get_freelist (int ,int ,int *,int) ;
 int xfs_alloc_vextent (struct xfs_alloc_arg*) ;
 int xfs_extent_busy_reuse (int ,int ,int ,int,int) ;

int
xrep_alloc_ag_block(
 struct xfs_scrub *sc,
 const struct xfs_owner_info *oinfo,
 xfs_fsblock_t *fsbno,
 enum xfs_ag_resv_type resv)
{
 struct xfs_alloc_arg args = {0};
 xfs_agblock_t bno;
 int error;

 switch (resv) {
 case 129:
 case 128:
  error = xfs_alloc_get_freelist(sc->tp, sc->sa.agf_bp, &bno, 1);
  if (error)
   return error;
  if (bno == NULLAGBLOCK)
   return -ENOSPC;
  xfs_extent_busy_reuse(sc->mp, sc->sa.agno, bno,
    1, 0);
  *fsbno = XFS_AGB_TO_FSB(sc->mp, sc->sa.agno, bno);
  if (resv == 128)
   xfs_ag_resv_rmapbt_alloc(sc->mp, sc->sa.agno);
  return 0;
 default:
  break;
 }

 args.tp = sc->tp;
 args.mp = sc->mp;
 args.oinfo = *oinfo;
 args.fsbno = XFS_AGB_TO_FSB(args.mp, sc->sa.agno, 0);
 args.minlen = 1;
 args.maxlen = 1;
 args.prod = 1;
 args.type = XFS_ALLOCTYPE_THIS_AG;
 args.resv = resv;

 error = xfs_alloc_vextent(&args);
 if (error)
  return error;
 if (args.fsbno == NULLFSBLOCK)
  return -ENOSPC;
 ASSERT(args.len == 1);
 *fsbno = args.fsbno;

 return 0;
}
