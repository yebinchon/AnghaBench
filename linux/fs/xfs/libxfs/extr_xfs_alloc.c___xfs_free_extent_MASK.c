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
typedef  scalar_t__ xfs_extlen_t ;
typedef  int /*<<< orphan*/  xfs_agnumber_t ;
typedef  scalar_t__ xfs_agblock_t ;
struct xfs_trans {struct xfs_mount* t_mountp; } ;
struct xfs_owner_info {int dummy; } ;
struct TYPE_3__ {scalar_t__ sb_agblocks; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_buf {int dummy; } ;
typedef  enum xfs_ag_resv_type { ____Placeholder_xfs_ag_resv_type } xfs_ag_resv_type ;
struct TYPE_4__ {int /*<<< orphan*/  agf_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int XFS_AG_RESV_AGFL ; 
 TYPE_2__* FUNC1 (struct xfs_buf*) ; 
 int /*<<< orphan*/  XFS_ERRTAG_FREE_EXTENT ; 
 unsigned int XFS_EXTENT_BUSY_SKIP_DISCARD ; 
 scalar_t__ FUNC2 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_mount*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  err ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_trans*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,unsigned int) ; 
 int FUNC8 (struct xfs_trans*,struct xfs_buf*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct xfs_owner_info const*,int) ; 
 int FUNC9 (struct xfs_trans*,int /*<<< orphan*/ ,struct xfs_buf**) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_trans*,struct xfs_buf*) ; 

int
FUNC11(
	struct xfs_trans		*tp,
	xfs_fsblock_t			bno,
	xfs_extlen_t			len,
	const struct xfs_owner_info	*oinfo,
	enum xfs_ag_resv_type		type,
	bool				skip_discard)
{
	struct xfs_mount		*mp = tp->t_mountp;
	struct xfs_buf			*agbp;
	xfs_agnumber_t			agno = FUNC3(mp, bno);
	xfs_agblock_t			agbno = FUNC2(mp, bno);
	int				error;
	unsigned int			busy_flags = 0;

	FUNC0(len != 0);
	FUNC0(type != XFS_AG_RESV_AGFL);

	if (FUNC4(false, mp,
			XFS_ERRTAG_FREE_EXTENT))
		return -EIO;

	error = FUNC9(tp, agno, &agbp);
	if (error)
		return error;

	FUNC5(mp, agbno < mp->m_sb.sb_agblocks, err);

	/* validate the extent size is legal now we have the agf locked */
	FUNC5(mp,
		agbno + len <= FUNC6(FUNC1(agbp)->agf_length),
				err);

	error = FUNC8(tp, agbp, agno, agbno, len, oinfo, type);
	if (error)
		goto err;

	if (skip_discard)
		busy_flags |= XFS_EXTENT_BUSY_SKIP_DISCARD;
	FUNC7(tp, agno, agbno, len, busy_flags);
	return 0;

err:
	FUNC10(tp, agbp);
	return error;
}