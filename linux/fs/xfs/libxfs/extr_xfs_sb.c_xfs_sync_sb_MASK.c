#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tr_sb; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct xfs_mount*) ; 
 int /*<<< orphan*/  XFS_TRANS_NO_WRITECOUNT ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_trans*) ; 
 int FUNC2 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_trans**) ; 
 int FUNC3 (struct xfs_trans*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_trans*) ; 

int
FUNC5(
	struct xfs_mount	*mp,
	bool			wait)
{
	struct xfs_trans	*tp;
	int			error;

	error = FUNC2(mp, &FUNC0(mp)->tr_sb, 0, 0,
			XFS_TRANS_NO_WRITECOUNT, &tp);
	if (error)
		return error;

	FUNC1(tp);
	if (wait)
		FUNC4(tp);
	return FUNC3(tp);
}