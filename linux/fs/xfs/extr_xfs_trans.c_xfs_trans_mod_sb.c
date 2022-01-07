
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t_blk_res_used; int t_blk_res; int t_rtx_res_used; int t_rtx_res; int t_flags; int t_rextslog_delta; int t_rextents_delta; int t_rblocks_delta; int t_rbmblocks_delta; int t_rextsize_delta; int t_imaxpct_delta; int t_agcount_delta; int t_dblocks_delta; int t_res_frextents_delta; int t_frextents_delta; int t_res_fdblocks_delta; int t_fdblocks_delta; int t_ifree_delta; int t_icount_delta; TYPE_2__* t_mountp; } ;
typedef TYPE_1__ xfs_trans_t ;
struct TYPE_6__ {int m_sb; } ;
typedef TYPE_2__ xfs_mount_t ;
typedef int uint32_t ;
typedef int uint ;
typedef int int64_t ;


 int ASSERT (int) ;
 int SHUTDOWN_CORRUPT_INCORE ;
 int XFS_TRANS_DIRTY ;


 int XFS_TRANS_SB_DIRTY ;
 int xfs_force_shutdown (TYPE_2__*,int ) ;
 int xfs_sb_version_haslazysbcount (int *) ;

void
xfs_trans_mod_sb(
 xfs_trans_t *tp,
 uint field,
 int64_t delta)
{
 uint32_t flags = (XFS_TRANS_DIRTY|XFS_TRANS_SB_DIRTY);
 xfs_mount_t *mp = tp->t_mountp;

 switch (field) {
 case 137:
  tp->t_icount_delta += delta;
  if (xfs_sb_version_haslazysbcount(&mp->m_sb))
   flags &= ~XFS_TRANS_SB_DIRTY;
  break;
 case 136:
  tp->t_ifree_delta += delta;
  if (xfs_sb_version_haslazysbcount(&mp->m_sb))
   flags &= ~XFS_TRANS_SB_DIRTY;
  break;
 case 139:





  if (delta < 0) {
   tp->t_blk_res_used += (uint)-delta;
   if (tp->t_blk_res_used > tp->t_blk_res)
    xfs_force_shutdown(mp, SHUTDOWN_CORRUPT_INCORE);
  }
  tp->t_fdblocks_delta += delta;
  if (xfs_sb_version_haslazysbcount(&mp->m_sb))
   flags &= ~XFS_TRANS_SB_DIRTY;
  break;
 case 132:





  tp->t_res_fdblocks_delta += delta;
  if (xfs_sb_version_haslazysbcount(&mp->m_sb))
   flags &= ~XFS_TRANS_SB_DIRTY;
  break;
 case 138:





  if (delta < 0) {
   tp->t_rtx_res_used += (uint)-delta;
   ASSERT(tp->t_rtx_res_used <= tp->t_rtx_res);
  }
  tp->t_frextents_delta += delta;
  break;
 case 131:





  ASSERT(delta < 0);
  tp->t_res_frextents_delta += delta;
  break;
 case 140:
  ASSERT(delta > 0);
  tp->t_dblocks_delta += delta;
  break;
 case 141:
  ASSERT(delta > 0);
  tp->t_agcount_delta += delta;
  break;
 case 135:
  tp->t_imaxpct_delta += delta;
  break;
 case 129:
  tp->t_rextsize_delta += delta;
  break;
 case 133:
  tp->t_rbmblocks_delta += delta;
  break;
 case 134:
  tp->t_rblocks_delta += delta;
  break;
 case 130:
  tp->t_rextents_delta += delta;
  break;
 case 128:
  tp->t_rextslog_delta += delta;
  break;
 default:
  ASSERT(0);
  return;
 }

 tp->t_flags |= flags;
}
