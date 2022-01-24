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
struct xfs_buf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tr_sb; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_buf*) ; 
 int FUNC2 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_trans*) ; 
 int FUNC4 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_trans**) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_trans*,struct xfs_buf*) ; 
 int FUNC6 (struct xfs_trans*) ; 
 struct xfs_buf* FUNC7 (struct xfs_trans*,struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_trans*) ; 

int
FUNC9(
	struct xfs_mount	*mp)
{
	struct xfs_trans	*tp;
	struct xfs_buf		*bp;
	int			error;

	error = FUNC4(mp, &FUNC0(mp)->tr_sb, 0, 0, 0, &tp);
	if (error)
		return error;

	bp = FUNC7(tp, mp);
	FUNC3(tp);
	FUNC5(tp, bp);
	FUNC8(tp);
	error = FUNC6(tp);
	if (error)
		goto out;
	/*
	 * write out the sb buffer to get the changes to disk
	 */
	error = FUNC2(bp);
out:
	FUNC1(bp);
	return error;
}