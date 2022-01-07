
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_fsblock_t ;
typedef int xfs_fileoff_t ;
typedef int xfs_filblks_t ;
typedef int xfs_exntst_t ;
typedef scalar_t__ xfs_agnumber_t ;
typedef int xfs_agblock_t ;
typedef int uint64_t ;
struct xfs_trans {struct xfs_mount* t_mountp; } ;
struct xfs_owner_info {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct TYPE_3__ {scalar_t__ agno; } ;
struct TYPE_4__ {TYPE_1__ a; } ;
struct xfs_btree_cur {struct xfs_mount* bc_mp; TYPE_2__ bc_private; } ;
typedef enum xfs_rmap_intent_type { ____Placeholder_xfs_rmap_intent_type } xfs_rmap_intent_type ;


 int ASSERT (int) ;
 int EFSCORRUPTED ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ NULLAGNUMBER ;
 int XFS_ERRTAG_RMAP_FINISH_ONE ;
 int XFS_EXT_UNWRITTEN ;
 int XFS_FSB_TO_AGBNO (struct xfs_mount*,int ) ;
 scalar_t__ XFS_FSB_TO_AGNO (struct xfs_mount*,int ) ;
 scalar_t__ XFS_TEST_ERROR (int,struct xfs_mount*,int ) ;
 int trace_xfs_rmap_deferred (struct xfs_mount*,scalar_t__,int,int ,int ,int,int ,int ,int ) ;
 int xfs_free_extent_fix_freelist (struct xfs_trans*,scalar_t__,struct xfs_buf**) ;
 int xfs_rmap_convert (struct xfs_btree_cur*,int ,int ,int,struct xfs_owner_info*) ;
 int xfs_rmap_convert_shared (struct xfs_btree_cur*,int ,int ,int,struct xfs_owner_info*) ;
 int xfs_rmap_finish_one_cleanup (struct xfs_trans*,struct xfs_btree_cur*,int ) ;
 int xfs_rmap_ino_owner (struct xfs_owner_info*,int ,int,int ) ;
 int xfs_rmap_map (struct xfs_btree_cur*,int ,int ,int,struct xfs_owner_info*) ;
 int xfs_rmap_map_shared (struct xfs_btree_cur*,int ,int ,int,struct xfs_owner_info*) ;
 int xfs_rmap_unmap (struct xfs_btree_cur*,int ,int ,int,struct xfs_owner_info*) ;
 int xfs_rmap_unmap_shared (struct xfs_btree_cur*,int ,int ,int,struct xfs_owner_info*) ;
 struct xfs_btree_cur* xfs_rmapbt_init_cursor (struct xfs_mount*,struct xfs_trans*,struct xfs_buf*,scalar_t__) ;
 int xfs_trans_brelse (struct xfs_trans*,struct xfs_buf*) ;

int
xfs_rmap_finish_one(
 struct xfs_trans *tp,
 enum xfs_rmap_intent_type type,
 uint64_t owner,
 int whichfork,
 xfs_fileoff_t startoff,
 xfs_fsblock_t startblock,
 xfs_filblks_t blockcount,
 xfs_exntst_t state,
 struct xfs_btree_cur **pcur)
{
 struct xfs_mount *mp = tp->t_mountp;
 struct xfs_btree_cur *rcur;
 struct xfs_buf *agbp = ((void*)0);
 int error = 0;
 xfs_agnumber_t agno;
 struct xfs_owner_info oinfo;
 xfs_agblock_t bno;
 bool unwritten;

 agno = XFS_FSB_TO_AGNO(mp, startblock);
 ASSERT(agno != NULLAGNUMBER);
 bno = XFS_FSB_TO_AGBNO(mp, startblock);

 trace_xfs_rmap_deferred(mp, agno, type, bno, owner, whichfork,
   startoff, blockcount, state);

 if (XFS_TEST_ERROR(0, mp,
   XFS_ERRTAG_RMAP_FINISH_ONE))
  return -EIO;





 rcur = *pcur;
 if (rcur != ((void*)0) && rcur->bc_private.a.agno != agno) {
  xfs_rmap_finish_one_cleanup(tp, rcur, 0);
  rcur = ((void*)0);
  *pcur = ((void*)0);
 }
 if (rcur == ((void*)0)) {





  error = xfs_free_extent_fix_freelist(tp, agno, &agbp);
  if (error)
   return error;
  if (!agbp)
   return -EFSCORRUPTED;

  rcur = xfs_rmapbt_init_cursor(mp, tp, agbp, agno);
  if (!rcur) {
   error = -ENOMEM;
   goto out_cur;
  }
 }
 *pcur = rcur;

 xfs_rmap_ino_owner(&oinfo, owner, whichfork, startoff);
 unwritten = state == XFS_EXT_UNWRITTEN;
 bno = XFS_FSB_TO_AGBNO(rcur->bc_mp, startblock);

 switch (type) {
 case 135:
 case 131:
  error = xfs_rmap_map(rcur, bno, blockcount, unwritten, &oinfo);
  break;
 case 130:
  error = xfs_rmap_map_shared(rcur, bno, blockcount, unwritten,
    &oinfo);
  break;
 case 132:
 case 129:
  error = xfs_rmap_unmap(rcur, bno, blockcount, unwritten,
    &oinfo);
  break;
 case 128:
  error = xfs_rmap_unmap_shared(rcur, bno, blockcount, unwritten,
    &oinfo);
  break;
 case 134:
  error = xfs_rmap_convert(rcur, bno, blockcount, !unwritten,
    &oinfo);
  break;
 case 133:
  error = xfs_rmap_convert_shared(rcur, bno, blockcount,
    !unwritten, &oinfo);
  break;
 default:
  ASSERT(0);
  error = -EFSCORRUPTED;
 }
 return error;

out_cur:
 xfs_trans_brelse(tp, agbp);

 return error;
}
