#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint ;
struct xfs_trans {int /*<<< orphan*/ * t_dqinfo; } ;
struct xfs_mount {int dummy; } ;
struct xfs_dquot {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*) ; 
 int XFS_QMOPT_ENOSPC ; 
 int XFS_QMOPT_FORCE_RES ; 
 int XFS_QMOPT_RESBLK_MASK ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_trans*) ; 
 int FUNC4 (struct xfs_trans*,struct xfs_mount*,struct xfs_dquot*,int /*<<< orphan*/ ,long,int) ; 

int
FUNC5(
	struct xfs_trans	*tp,
	struct xfs_mount	*mp,
	struct xfs_dquot	*udqp,
	struct xfs_dquot	*gdqp,
	struct xfs_dquot	*pdqp,
	int64_t			nblks,
	long			ninos,
	uint			flags)
{
	int		error;

	if (!FUNC2(mp) || !FUNC1(mp))
		return 0;

	if (tp && tp->t_dqinfo == NULL)
		FUNC3(tp);

	FUNC0(flags & XFS_QMOPT_RESBLK_MASK);

	if (udqp) {
		error = FUNC4(tp, mp, udqp, nblks, ninos,
					(flags & ~XFS_QMOPT_ENOSPC));
		if (error)
			return error;
	}

	if (gdqp) {
		error = FUNC4(tp, mp, gdqp, nblks, ninos, flags);
		if (error)
			goto unwind_usr;
	}

	if (pdqp) {
		error = FUNC4(tp, mp, pdqp, nblks, ninos, flags);
		if (error)
			goto unwind_grp;
	}

	/*
	 * Didn't change anything critical, so, no need to log
	 */
	return 0;

unwind_grp:
	flags |= XFS_QMOPT_FORCE_RES;
	if (gdqp)
		FUNC4(tp, mp, gdqp, -nblks, -ninos, flags);
unwind_usr:
	flags |= XFS_QMOPT_FORCE_RES;
	if (udqp)
		FUNC4(tp, mp, udqp, -nblks, -ninos, flags);
	return error;
}