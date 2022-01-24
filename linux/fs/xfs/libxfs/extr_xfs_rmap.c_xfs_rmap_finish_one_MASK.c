#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_fsblock_t ;
typedef  int /*<<< orphan*/  xfs_fileoff_t ;
typedef  int /*<<< orphan*/  xfs_filblks_t ;
typedef  int /*<<< orphan*/  xfs_exntst_t ;
typedef  scalar_t__ xfs_agnumber_t ;
typedef  int /*<<< orphan*/  xfs_agblock_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct xfs_trans {struct xfs_mount* t_mountp; } ;
struct xfs_owner_info {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct TYPE_3__ {scalar_t__ agno; } ;
struct TYPE_4__ {TYPE_1__ a; } ;
struct xfs_btree_cur {struct xfs_mount* bc_mp; TYPE_2__ bc_private; } ;
typedef  enum xfs_rmap_intent_type { ____Placeholder_xfs_rmap_intent_type } xfs_rmap_intent_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFSCORRUPTED ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ NULLAGNUMBER ; 
 int /*<<< orphan*/  XFS_ERRTAG_RMAP_FINISH_ONE ; 
 int /*<<< orphan*/  XFS_EXT_UNWRITTEN ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
#define  XFS_RMAP_ALLOC 135 
#define  XFS_RMAP_CONVERT 134 
#define  XFS_RMAP_CONVERT_SHARED 133 
#define  XFS_RMAP_FREE 132 
#define  XFS_RMAP_MAP 131 
#define  XFS_RMAP_MAP_SHARED 130 
#define  XFS_RMAP_UNMAP 129 
#define  XFS_RMAP_UNMAP_SHARED 128 
 scalar_t__ FUNC3 (int,struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xfs_trans*,scalar_t__,struct xfs_buf**) ; 
 int FUNC6 (struct xfs_btree_cur*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct xfs_owner_info*) ; 
 int FUNC7 (struct xfs_btree_cur*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct xfs_owner_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_trans*,struct xfs_btree_cur*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_owner_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct xfs_btree_cur*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct xfs_owner_info*) ; 
 int FUNC11 (struct xfs_btree_cur*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct xfs_owner_info*) ; 
 int FUNC12 (struct xfs_btree_cur*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct xfs_owner_info*) ; 
 int FUNC13 (struct xfs_btree_cur*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct xfs_owner_info*) ; 
 struct xfs_btree_cur* FUNC14 (struct xfs_mount*,struct xfs_trans*,struct xfs_buf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct xfs_trans*,struct xfs_buf*) ; 

int
FUNC16(
	struct xfs_trans		*tp,
	enum xfs_rmap_intent_type	type,
	uint64_t			owner,
	int				whichfork,
	xfs_fileoff_t			startoff,
	xfs_fsblock_t			startblock,
	xfs_filblks_t			blockcount,
	xfs_exntst_t			state,
	struct xfs_btree_cur		**pcur)
{
	struct xfs_mount		*mp = tp->t_mountp;
	struct xfs_btree_cur		*rcur;
	struct xfs_buf			*agbp = NULL;
	int				error = 0;
	xfs_agnumber_t			agno;
	struct xfs_owner_info		oinfo;
	xfs_agblock_t			bno;
	bool				unwritten;

	agno = FUNC2(mp, startblock);
	FUNC0(agno != NULLAGNUMBER);
	bno = FUNC1(mp, startblock);

	FUNC4(mp, agno, type, bno, owner, whichfork,
			startoff, blockcount, state);

	if (FUNC3(false, mp,
			XFS_ERRTAG_RMAP_FINISH_ONE))
		return -EIO;

	/*
	 * If we haven't gotten a cursor or the cursor AG doesn't match
	 * the startblock, get one now.
	 */
	rcur = *pcur;
	if (rcur != NULL && rcur->bc_private.a.agno != agno) {
		FUNC8(tp, rcur, 0);
		rcur = NULL;
		*pcur = NULL;
	}
	if (rcur == NULL) {
		/*
		 * Refresh the freelist before we start changing the
		 * rmapbt, because a shape change could cause us to
		 * allocate blocks.
		 */
		error = FUNC5(tp, agno, &agbp);
		if (error)
			return error;
		if (!agbp)
			return -EFSCORRUPTED;

		rcur = FUNC14(mp, tp, agbp, agno);
		if (!rcur) {
			error = -ENOMEM;
			goto out_cur;
		}
	}
	*pcur = rcur;

	FUNC9(&oinfo, owner, whichfork, startoff);
	unwritten = state == XFS_EXT_UNWRITTEN;
	bno = FUNC1(rcur->bc_mp, startblock);

	switch (type) {
	case XFS_RMAP_ALLOC:
	case XFS_RMAP_MAP:
		error = FUNC10(rcur, bno, blockcount, unwritten, &oinfo);
		break;
	case XFS_RMAP_MAP_SHARED:
		error = FUNC11(rcur, bno, blockcount, unwritten,
				&oinfo);
		break;
	case XFS_RMAP_FREE:
	case XFS_RMAP_UNMAP:
		error = FUNC12(rcur, bno, blockcount, unwritten,
				&oinfo);
		break;
	case XFS_RMAP_UNMAP_SHARED:
		error = FUNC13(rcur, bno, blockcount, unwritten,
				&oinfo);
		break;
	case XFS_RMAP_CONVERT:
		error = FUNC6(rcur, bno, blockcount, !unwritten,
				&oinfo);
		break;
	case XFS_RMAP_CONVERT_SHARED:
		error = FUNC7(rcur, bno, blockcount,
				!unwritten, &oinfo);
		break;
	default:
		FUNC0(0);
		error = -EFSCORRUPTED;
	}
	return error;

out_cur:
	FUNC15(tp, agbp);

	return error;
}