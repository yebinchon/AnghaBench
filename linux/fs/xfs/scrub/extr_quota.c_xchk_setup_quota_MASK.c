#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint ;
struct xfs_scrub {int /*<<< orphan*/  ilock_flags; int /*<<< orphan*/  ip; TYPE_2__* mp; int /*<<< orphan*/  flags; } ;
struct xfs_inode {int dummy; } ;
struct TYPE_7__ {TYPE_1__* m_quotainfo; } ;
struct TYPE_6__ {int /*<<< orphan*/  qi_quotaofflock; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  XCHK_HAS_QUOTAOFFLOCK ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct xfs_scrub*) ; 
 int FUNC4 (struct xfs_scrub*,struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__) ; 

int
FUNC8(
	struct xfs_scrub	*sc,
	struct xfs_inode	*ip)
{
	uint			dqtype;
	int			error;

	if (!FUNC1(sc->mp) || !FUNC0(sc->mp))
		return -ENOENT;

	dqtype = FUNC3(sc);
	if (dqtype == 0)
		return -EINVAL;
	sc->flags |= XCHK_HAS_QUOTAOFFLOCK;
	FUNC2(&sc->mp->m_quotainfo->qi_quotaofflock);
	if (!FUNC7(sc->mp, dqtype))
		return -ENOENT;
	error = FUNC4(sc, ip);
	if (error)
		return error;
	sc->ip = FUNC6(sc->mp, dqtype);
	FUNC5(sc->ip, XFS_ILOCK_EXCL);
	sc->ilock_flags = XFS_ILOCK_EXCL;
	return 0;
}