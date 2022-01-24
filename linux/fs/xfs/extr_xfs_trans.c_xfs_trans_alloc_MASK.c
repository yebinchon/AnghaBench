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
typedef  int uint ;
struct xfs_trans_res {scalar_t__ tr_logres; } ;
struct xfs_trans {int t_flags; int /*<<< orphan*/  t_firstblock; int /*<<< orphan*/  t_dfops; int /*<<< orphan*/  t_busy; int /*<<< orphan*/  t_items; struct xfs_mount* t_mountp; int /*<<< orphan*/  t_magic; } ;
struct xfs_mount {int /*<<< orphan*/  m_active_trans; TYPE_2__* m_super; } ;
struct TYPE_3__ {scalar_t__ frozen; } ;
struct TYPE_4__ {TYPE_1__ s_writers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NULLFSBLOCK ; 
 scalar_t__ SB_FREEZE_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  XFS_TRANS_HEADER_MAGIC ; 
 int XFS_TRANS_NO_WRITECOUNT ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct xfs_trans* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_trans*) ; 
 int FUNC7 (struct xfs_trans*,struct xfs_trans_res*,int,int) ; 
 int /*<<< orphan*/  xfs_trans_zone ; 

int
FUNC8(
	struct xfs_mount	*mp,
	struct xfs_trans_res	*resp,
	uint			blocks,
	uint			rtextents,
	uint			flags,
	struct xfs_trans	**tpp)
{
	struct xfs_trans	*tp;
	int			error;

	/*
	 * Allocate the handle before we do our freeze accounting and setting up
	 * GFP_NOFS allocation context so that we avoid lockdep false positives
	 * by doing GFP_KERNEL allocations inside sb_start_intwrite().
	 */
	tp = FUNC3(xfs_trans_zone, 0);
	if (!(flags & XFS_TRANS_NO_WRITECOUNT))
		FUNC4(mp->m_super);

	/*
	 * Zero-reservation ("empty") transactions can't modify anything, so
	 * they're allowed to run while we're frozen.
	 */
	FUNC1(resp->tr_logres > 0 &&
		mp->m_super->s_writers.frozen == SB_FREEZE_COMPLETE);
	FUNC2(&mp->m_active_trans);

	tp->t_magic = XFS_TRANS_HEADER_MAGIC;
	tp->t_flags = flags;
	tp->t_mountp = mp;
	FUNC0(&tp->t_items);
	FUNC0(&tp->t_busy);
	FUNC0(&tp->t_dfops);
	tp->t_firstblock = NULLFSBLOCK;

	error = FUNC7(tp, resp, blocks, rtextents);
	if (error) {
		FUNC6(tp);
		return error;
	}

	FUNC5(tp, _RET_IP_);

	*tpp = tp;
	return 0;
}