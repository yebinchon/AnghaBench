
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ xfs_fsblock_t ;
typedef scalar_t__ xfs_extlen_t ;
struct xfs_trans {struct xfs_mount* t_mountp; } ;
struct xfs_phys_extent {scalar_t__ pe_startblock; int pe_flags; scalar_t__ pe_len; } ;
struct TYPE_4__ {scalar_t__ sb_dblocks; scalar_t__ sb_agblocks; } ;
struct xfs_mount {int m_refc_maxlevels; TYPE_1__ m_sb; } ;
struct TYPE_5__ {int cui_nextents; struct xfs_phys_extent* cui_extents; } ;
struct xfs_cui_log_item {int cui_flags; TYPE_2__ cui_format; } ;
struct xfs_cud_log_item {int dummy; } ;
struct xfs_btree_cur {int dummy; } ;
struct xfs_bmbt_irec {scalar_t__ br_blockcount; scalar_t__ br_startblock; } ;
typedef enum xfs_refcount_intent_type { ____Placeholder_xfs_refcount_intent_type } xfs_refcount_intent_type ;
struct TYPE_6__ {int tr_itruncate; } ;


 int ASSERT (int) ;
 int EFSCORRUPTED ;
 int EIO ;
 TYPE_3__* M_RES (struct xfs_mount*) ;
 scalar_t__ XFS_BB_TO_FSB (struct xfs_mount*,int ) ;
 int XFS_CUI_RECOVERED ;
 int XFS_FSB_TO_DADDR (struct xfs_mount*,scalar_t__) ;


 int XFS_REFCOUNT_EXTENT_FLAGS ;
 int XFS_REFCOUNT_EXTENT_TYPE_MASK ;


 int XFS_TRANS_RESERVE ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int xfs_cui_release (struct xfs_cui_log_item*) ;
 int xfs_defer_move (struct xfs_trans*,struct xfs_trans*) ;
 int xfs_refcount_alloc_cow_extent (struct xfs_trans*,scalar_t__,scalar_t__) ;
 int xfs_refcount_decrease_extent (struct xfs_trans*,struct xfs_bmbt_irec*) ;
 int xfs_refcount_finish_one_cleanup (struct xfs_trans*,struct xfs_btree_cur*,int) ;
 int xfs_refcount_free_cow_extent (struct xfs_trans*,scalar_t__,scalar_t__) ;
 int xfs_refcount_increase_extent (struct xfs_trans*,struct xfs_bmbt_irec*) ;
 int xfs_trans_alloc (struct xfs_mount*,int *,int,int ,int ,struct xfs_trans**) ;
 int xfs_trans_cancel (struct xfs_trans*) ;
 int xfs_trans_commit (struct xfs_trans*) ;
 struct xfs_cud_log_item* xfs_trans_get_cud (struct xfs_trans*,struct xfs_cui_log_item*) ;
 int xfs_trans_log_finish_refcount_update (struct xfs_trans*,struct xfs_cud_log_item*,int,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,struct xfs_btree_cur**) ;

int
xfs_cui_recover(
 struct xfs_trans *parent_tp,
 struct xfs_cui_log_item *cuip)
{
 int i;
 int error = 0;
 unsigned int refc_type;
 struct xfs_phys_extent *refc;
 xfs_fsblock_t startblock_fsb;
 bool op_ok;
 struct xfs_cud_log_item *cudp;
 struct xfs_trans *tp;
 struct xfs_btree_cur *rcur = ((void*)0);
 enum xfs_refcount_intent_type type;
 xfs_fsblock_t new_fsb;
 xfs_extlen_t new_len;
 struct xfs_bmbt_irec irec;
 bool requeue_only = 0;
 struct xfs_mount *mp = parent_tp->t_mountp;

 ASSERT(!test_bit(XFS_CUI_RECOVERED, &cuip->cui_flags));






 for (i = 0; i < cuip->cui_format.cui_nextents; i++) {
  refc = &cuip->cui_format.cui_extents[i];
  startblock_fsb = XFS_BB_TO_FSB(mp,
       XFS_FSB_TO_DADDR(mp, refc->pe_startblock));
  switch (refc->pe_flags & XFS_REFCOUNT_EXTENT_TYPE_MASK) {
  case 128:
  case 130:
  case 131:
  case 129:
   op_ok = 1;
   break;
  default:
   op_ok = 0;
   break;
  }
  if (!op_ok || startblock_fsb == 0 ||
      refc->pe_len == 0 ||
      startblock_fsb >= mp->m_sb.sb_dblocks ||
      refc->pe_len >= mp->m_sb.sb_agblocks ||
      (refc->pe_flags & ~XFS_REFCOUNT_EXTENT_FLAGS)) {




   set_bit(XFS_CUI_RECOVERED, &cuip->cui_flags);
   xfs_cui_release(cuip);
   return -EIO;
  }
 }
 error = xfs_trans_alloc(mp, &M_RES(mp)->tr_itruncate,
   mp->m_refc_maxlevels * 2, 0, XFS_TRANS_RESERVE, &tp);
 if (error)
  return error;





 xfs_defer_move(tp, parent_tp);
 cudp = xfs_trans_get_cud(tp, cuip);

 for (i = 0; i < cuip->cui_format.cui_nextents; i++) {
  refc = &cuip->cui_format.cui_extents[i];
  refc_type = refc->pe_flags & XFS_REFCOUNT_EXTENT_TYPE_MASK;
  switch (refc_type) {
  case 128:
  case 130:
  case 131:
  case 129:
   type = refc_type;
   break;
  default:
   error = -EFSCORRUPTED;
   goto abort_error;
  }
  if (requeue_only) {
   new_fsb = refc->pe_startblock;
   new_len = refc->pe_len;
  } else
   error = xfs_trans_log_finish_refcount_update(tp, cudp,
    type, refc->pe_startblock, refc->pe_len,
    &new_fsb, &new_len, &rcur);
  if (error)
   goto abort_error;


  if (new_len > 0) {
   irec.br_startblock = new_fsb;
   irec.br_blockcount = new_len;
   switch (type) {
   case 128:
    xfs_refcount_increase_extent(tp, &irec);
    break;
   case 130:
    xfs_refcount_decrease_extent(tp, &irec);
    break;
   case 131:
    xfs_refcount_alloc_cow_extent(tp,
      irec.br_startblock,
      irec.br_blockcount);
    break;
   case 129:
    xfs_refcount_free_cow_extent(tp,
      irec.br_startblock,
      irec.br_blockcount);
    break;
   default:
    ASSERT(0);
   }
   requeue_only = 1;
  }
 }

 xfs_refcount_finish_one_cleanup(tp, rcur, error);
 set_bit(XFS_CUI_RECOVERED, &cuip->cui_flags);
 xfs_defer_move(parent_tp, tp);
 error = xfs_trans_commit(tp);
 return error;

abort_error:
 xfs_refcount_finish_one_cleanup(tp, rcur, error);
 xfs_defer_move(parent_tp, tp);
 xfs_trans_cancel(tp);
 return error;
}
