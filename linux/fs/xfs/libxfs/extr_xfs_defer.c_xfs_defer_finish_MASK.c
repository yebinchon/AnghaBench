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
struct xfs_trans {int t_flags; int /*<<< orphan*/  t_mountp; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHUTDOWN_CORRUPT_INCORE ; 
 int XFS_TRANS_DIRTY ; 
 int FUNC0 (struct xfs_trans**) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_trans*) ; 
 int FUNC2 (struct xfs_trans**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(
	struct xfs_trans	**tp)
{
	int			error;

	/*
	 * Finish and roll the transaction once more to avoid returning to the
	 * caller with a dirty transaction.
	 */
	error = FUNC0(tp);
	if (error)
		return error;
	if ((*tp)->t_flags & XFS_TRANS_DIRTY) {
		error = FUNC2(tp);
		if (error) {
			FUNC3((*tp)->t_mountp,
					   SHUTDOWN_CORRUPT_INCORE);
			return error;
		}
	}
	FUNC1(*tp);
	return 0;
}