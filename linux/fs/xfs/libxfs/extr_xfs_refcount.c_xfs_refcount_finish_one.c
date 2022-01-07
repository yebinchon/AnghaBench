
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ xfs_fsblock_t ;
typedef scalar_t__ xfs_extlen_t ;
typedef scalar_t__ xfs_agnumber_t ;
typedef int xfs_agblock_t ;
struct xfs_trans {struct xfs_mount* t_mountp; } ;
struct xfs_mount {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct TYPE_5__ {unsigned long nr_ops; int shape_changes; } ;
struct TYPE_6__ {TYPE_1__ refc; } ;
struct TYPE_7__ {scalar_t__ agno; TYPE_2__ priv; } ;
struct TYPE_8__ {TYPE_3__ a; } ;
struct xfs_btree_cur {TYPE_4__ bc_private; } ;
typedef enum xfs_refcount_intent_type { ____Placeholder_xfs_refcount_intent_type } xfs_refcount_intent_type ;


 int ASSERT (int) ;
 int EFSCORRUPTED ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ NULLAGNUMBER ;
 scalar_t__ XFS_AGB_TO_FSB (struct xfs_mount*,scalar_t__,int ) ;
 int XFS_ALLOC_FLAG_FREEING ;
 int XFS_ERRTAG_REFCOUNT_FINISH_ONE ;
 int XFS_FSB_TO_AGBNO (struct xfs_mount*,scalar_t__) ;
 scalar_t__ XFS_FSB_TO_AGNO (struct xfs_mount*,scalar_t__) ;
 int XFS_REFCOUNT_ADJUST_DECREASE ;
 int XFS_REFCOUNT_ADJUST_INCREASE ;




 scalar_t__ XFS_TEST_ERROR (int,struct xfs_mount*,int ) ;
 int __xfs_refcount_cow_alloc (struct xfs_btree_cur*,int ,scalar_t__) ;
 int __xfs_refcount_cow_free (struct xfs_btree_cur*,int ,scalar_t__) ;
 int trace_xfs_refcount_deferred (struct xfs_mount*,scalar_t__,int,int ,scalar_t__) ;
 int trace_xfs_refcount_finish_one_leftover (struct xfs_mount*,scalar_t__,int,int ,scalar_t__,int ,scalar_t__) ;
 int xfs_alloc_read_agf (struct xfs_mount*,struct xfs_trans*,scalar_t__,int ,struct xfs_buf**) ;
 int xfs_refcount_adjust (struct xfs_btree_cur*,int ,scalar_t__,int *,scalar_t__*,int ,int *) ;
 int xfs_refcount_finish_one_cleanup (struct xfs_trans*,struct xfs_btree_cur*,int ) ;
 struct xfs_btree_cur* xfs_refcountbt_init_cursor (struct xfs_mount*,struct xfs_trans*,struct xfs_buf*,scalar_t__) ;
 int xfs_trans_brelse (struct xfs_trans*,struct xfs_buf*) ;

int
xfs_refcount_finish_one(
 struct xfs_trans *tp,
 enum xfs_refcount_intent_type type,
 xfs_fsblock_t startblock,
 xfs_extlen_t blockcount,
 xfs_fsblock_t *new_fsb,
 xfs_extlen_t *new_len,
 struct xfs_btree_cur **pcur)
{
 struct xfs_mount *mp = tp->t_mountp;
 struct xfs_btree_cur *rcur;
 struct xfs_buf *agbp = ((void*)0);
 int error = 0;
 xfs_agnumber_t agno;
 xfs_agblock_t bno;
 xfs_agblock_t new_agbno;
 unsigned long nr_ops = 0;
 int shape_changes = 0;

 agno = XFS_FSB_TO_AGNO(mp, startblock);
 ASSERT(agno != NULLAGNUMBER);
 bno = XFS_FSB_TO_AGBNO(mp, startblock);

 trace_xfs_refcount_deferred(mp, XFS_FSB_TO_AGNO(mp, startblock),
   type, XFS_FSB_TO_AGBNO(mp, startblock),
   blockcount);

 if (XFS_TEST_ERROR(0, mp,
   XFS_ERRTAG_REFCOUNT_FINISH_ONE))
  return -EIO;





 rcur = *pcur;
 if (rcur != ((void*)0) && rcur->bc_private.a.agno != agno) {
  nr_ops = rcur->bc_private.a.priv.refc.nr_ops;
  shape_changes = rcur->bc_private.a.priv.refc.shape_changes;
  xfs_refcount_finish_one_cleanup(tp, rcur, 0);
  rcur = ((void*)0);
  *pcur = ((void*)0);
 }
 if (rcur == ((void*)0)) {
  error = xfs_alloc_read_agf(tp->t_mountp, tp, agno,
    XFS_ALLOC_FLAG_FREEING, &agbp);
  if (error)
   return error;
  if (!agbp)
   return -EFSCORRUPTED;

  rcur = xfs_refcountbt_init_cursor(mp, tp, agbp, agno);
  if (!rcur) {
   error = -ENOMEM;
   goto out_cur;
  }
  rcur->bc_private.a.priv.refc.nr_ops = nr_ops;
  rcur->bc_private.a.priv.refc.shape_changes = shape_changes;
 }
 *pcur = rcur;

 switch (type) {
 case 128:
  error = xfs_refcount_adjust(rcur, bno, blockcount, &new_agbno,
   new_len, XFS_REFCOUNT_ADJUST_INCREASE, ((void*)0));
  *new_fsb = XFS_AGB_TO_FSB(mp, agno, new_agbno);
  break;
 case 130:
  error = xfs_refcount_adjust(rcur, bno, blockcount, &new_agbno,
   new_len, XFS_REFCOUNT_ADJUST_DECREASE, ((void*)0));
  *new_fsb = XFS_AGB_TO_FSB(mp, agno, new_agbno);
  break;
 case 131:
  *new_fsb = startblock + blockcount;
  *new_len = 0;
  error = __xfs_refcount_cow_alloc(rcur, bno, blockcount);
  break;
 case 129:
  *new_fsb = startblock + blockcount;
  *new_len = 0;
  error = __xfs_refcount_cow_free(rcur, bno, blockcount);
  break;
 default:
  ASSERT(0);
  error = -EFSCORRUPTED;
 }
 if (!error && *new_len > 0)
  trace_xfs_refcount_finish_one_leftover(mp, agno, type,
    bno, blockcount, new_agbno, *new_len);
 return error;

out_cur:
 xfs_trans_brelse(tp, agbp);

 return error;
}
