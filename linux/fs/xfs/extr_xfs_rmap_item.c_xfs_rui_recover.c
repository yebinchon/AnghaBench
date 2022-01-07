
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ xfs_fsblock_t ;
typedef int xfs_exntst_t ;
struct xfs_trans {int dummy; } ;
struct TYPE_5__ {int rui_nextents; struct xfs_map_extent* rui_extents; } ;
struct xfs_rui_log_item {int rui_flags; TYPE_2__ rui_format; } ;
struct xfs_rud_log_item {int dummy; } ;
struct TYPE_4__ {scalar_t__ sb_dblocks; scalar_t__ sb_agblocks; } ;
struct xfs_mount {int m_rmap_maxlevels; TYPE_1__ m_sb; } ;
struct xfs_map_extent {int me_flags; scalar_t__ me_len; int me_startblock; int me_startoff; int me_owner; } ;
struct xfs_btree_cur {int dummy; } ;
typedef enum xfs_rmap_intent_type { ____Placeholder_xfs_rmap_intent_type } xfs_rmap_intent_type ;
struct TYPE_6__ {int tr_itruncate; } ;


 int ASSERT (int) ;
 int EFSCORRUPTED ;
 int EIO ;
 TYPE_3__* M_RES (struct xfs_mount*) ;
 int XFS_ATTR_FORK ;
 scalar_t__ XFS_BB_TO_FSB (struct xfs_mount*,int ) ;
 int XFS_DATA_FORK ;
 int XFS_EXT_NORM ;
 int XFS_EXT_UNWRITTEN ;
 int XFS_FSB_TO_DADDR (struct xfs_mount*,int ) ;
 int XFS_RMAP_ALLOC ;
 int XFS_RMAP_CONVERT ;
 int XFS_RMAP_CONVERT_SHARED ;

 int XFS_RMAP_EXTENT_ATTR_FORK ;


 int XFS_RMAP_EXTENT_FLAGS ;



 int XFS_RMAP_EXTENT_TYPE_MASK ;


 int XFS_RMAP_EXTENT_UNWRITTEN ;
 int XFS_RMAP_FREE ;
 int XFS_RMAP_MAP ;
 int XFS_RMAP_MAP_SHARED ;
 int XFS_RMAP_UNMAP ;
 int XFS_RMAP_UNMAP_SHARED ;
 int XFS_RUI_RECOVERED ;
 int XFS_TRANS_RESERVE ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int xfs_rmap_finish_one_cleanup (struct xfs_trans*,struct xfs_btree_cur*,int) ;
 int xfs_rui_release (struct xfs_rui_log_item*) ;
 int xfs_trans_alloc (struct xfs_mount*,int *,int ,int ,int ,struct xfs_trans**) ;
 int xfs_trans_cancel (struct xfs_trans*) ;
 int xfs_trans_commit (struct xfs_trans*) ;
 struct xfs_rud_log_item* xfs_trans_get_rud (struct xfs_trans*,struct xfs_rui_log_item*) ;
 int xfs_trans_log_finish_rmap_update (struct xfs_trans*,struct xfs_rud_log_item*,int,int ,int,int ,int ,scalar_t__,int ,struct xfs_btree_cur**) ;

int
xfs_rui_recover(
 struct xfs_mount *mp,
 struct xfs_rui_log_item *ruip)
{
 int i;
 int error = 0;
 struct xfs_map_extent *rmap;
 xfs_fsblock_t startblock_fsb;
 bool op_ok;
 struct xfs_rud_log_item *rudp;
 enum xfs_rmap_intent_type type;
 int whichfork;
 xfs_exntst_t state;
 struct xfs_trans *tp;
 struct xfs_btree_cur *rcur = ((void*)0);

 ASSERT(!test_bit(XFS_RUI_RECOVERED, &ruip->rui_flags));






 for (i = 0; i < ruip->rui_format.rui_nextents; i++) {
  rmap = &ruip->rui_format.rui_extents[i];
  startblock_fsb = XFS_BB_TO_FSB(mp,
       XFS_FSB_TO_DADDR(mp, rmap->me_startblock));
  switch (rmap->me_flags & XFS_RMAP_EXTENT_TYPE_MASK) {
  case 131:
  case 130:
  case 129:
  case 128:
  case 134:
  case 133:
  case 135:
  case 132:
   op_ok = 1;
   break;
  default:
   op_ok = 0;
   break;
  }
  if (!op_ok || startblock_fsb == 0 ||
      rmap->me_len == 0 ||
      startblock_fsb >= mp->m_sb.sb_dblocks ||
      rmap->me_len >= mp->m_sb.sb_agblocks ||
      (rmap->me_flags & ~XFS_RMAP_EXTENT_FLAGS)) {




   set_bit(XFS_RUI_RECOVERED, &ruip->rui_flags);
   xfs_rui_release(ruip);
   return -EIO;
  }
 }

 error = xfs_trans_alloc(mp, &M_RES(mp)->tr_itruncate,
   mp->m_rmap_maxlevels, 0, XFS_TRANS_RESERVE, &tp);
 if (error)
  return error;
 rudp = xfs_trans_get_rud(tp, ruip);

 for (i = 0; i < ruip->rui_format.rui_nextents; i++) {
  rmap = &ruip->rui_format.rui_extents[i];
  state = (rmap->me_flags & XFS_RMAP_EXTENT_UNWRITTEN) ?
    XFS_EXT_UNWRITTEN : XFS_EXT_NORM;
  whichfork = (rmap->me_flags & XFS_RMAP_EXTENT_ATTR_FORK) ?
    XFS_ATTR_FORK : XFS_DATA_FORK;
  switch (rmap->me_flags & XFS_RMAP_EXTENT_TYPE_MASK) {
  case 131:
   type = XFS_RMAP_MAP;
   break;
  case 130:
   type = XFS_RMAP_MAP_SHARED;
   break;
  case 129:
   type = XFS_RMAP_UNMAP;
   break;
  case 128:
   type = XFS_RMAP_UNMAP_SHARED;
   break;
  case 134:
   type = XFS_RMAP_CONVERT;
   break;
  case 133:
   type = XFS_RMAP_CONVERT_SHARED;
   break;
  case 135:
   type = XFS_RMAP_ALLOC;
   break;
  case 132:
   type = XFS_RMAP_FREE;
   break;
  default:
   error = -EFSCORRUPTED;
   goto abort_error;
  }
  error = xfs_trans_log_finish_rmap_update(tp, rudp, type,
    rmap->me_owner, whichfork,
    rmap->me_startoff, rmap->me_startblock,
    rmap->me_len, state, &rcur);
  if (error)
   goto abort_error;

 }

 xfs_rmap_finish_one_cleanup(tp, rcur, error);
 set_bit(XFS_RUI_RECOVERED, &ruip->rui_flags);
 error = xfs_trans_commit(tp);
 return error;

abort_error:
 xfs_rmap_finish_one_cleanup(tp, rcur, error);
 xfs_trans_cancel(tp);
 return error;
}
