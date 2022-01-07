
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_extlen_t ;
struct TYPE_3__ {int ar_reserved; int ar_asked; } ;
struct TYPE_4__ {int ar_asked; int ar_reserved; } ;
struct xfs_perag {int pagf_freeblks; int pagf_flcount; int pag_mount; TYPE_1__ pag_rmapbt_resv; TYPE_2__ pag_meta_resv; } ;
typedef enum xfs_ag_resv_type { ____Placeholder_xfs_ag_resv_type } xfs_ag_resv_type ;


 int ASSERT (int ) ;


 int XFS_BTREE_MAXLEVELS ;
 int XFS_ERRTAG_AG_RESV_CRITICAL ;
 int XFS_TEST_ERROR (int,int ,int ) ;
 int trace_xfs_ag_resv_critical (struct xfs_perag*,int,int) ;

bool
xfs_ag_resv_critical(
 struct xfs_perag *pag,
 enum xfs_ag_resv_type type)
{
 xfs_extlen_t avail;
 xfs_extlen_t orig;

 switch (type) {
 case 129:
  avail = pag->pagf_freeblks - pag->pag_rmapbt_resv.ar_reserved;
  orig = pag->pag_meta_resv.ar_asked;
  break;
 case 128:
  avail = pag->pagf_freeblks + pag->pagf_flcount -
   pag->pag_meta_resv.ar_reserved;
  orig = pag->pag_rmapbt_resv.ar_asked;
  break;
 default:
  ASSERT(0);
  return 0;
 }

 trace_xfs_ag_resv_critical(pag, type, avail);


 return XFS_TEST_ERROR(avail < orig / 10 || avail < XFS_BTREE_MAXLEVELS,
   pag->pag_mount, XFS_ERRTAG_AG_RESV_CRITICAL);
}
