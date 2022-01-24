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
struct xfs_dquot {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tr_qm_dqalloc; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_buf*) ; 
 int FUNC3 (struct xfs_trans**,struct xfs_dquot*,struct xfs_buf**) ; 
 int FUNC4 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_trans**) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_trans*) ; 
 int FUNC6 (struct xfs_trans*) ; 

__attribute__((used)) static int
FUNC7(
	struct xfs_mount	*mp,
	struct xfs_dquot	*dqp,
	struct xfs_buf		**bpp)
{
	struct xfs_trans	*tp;
	int			error;

	error = FUNC4(mp, &FUNC0(mp)->tr_qm_dqalloc,
			FUNC1(mp), 0, 0, &tp);
	if (error)
		goto err;

	error = FUNC3(&tp, dqp, bpp);
	if (error)
		goto err_cancel;

	error = FUNC6(tp);
	if (error) {
		/*
		 * Buffer was held to the transaction, so we have to unlock it
		 * manually here because we're not passing it back.
		 */
		FUNC2(*bpp);
		*bpp = NULL;
		goto err;
	}
	return 0;

err_cancel:
	FUNC5(tp);
err:
	return error;
}