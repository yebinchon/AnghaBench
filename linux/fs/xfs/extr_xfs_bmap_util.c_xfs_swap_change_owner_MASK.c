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
struct xfs_trans {int dummy; } ;
struct xfs_inode {int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 int FUNC0 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xfs_trans**) ; 

__attribute__((used)) static int
FUNC4(
	struct xfs_trans	**tpp,
	struct xfs_inode	*ip,
	struct xfs_inode	*tmpip)
{
	int			error;
	struct xfs_trans	*tp = *tpp;

	do {
		error = FUNC0(tp, ip, XFS_DATA_FORK, ip->i_ino,
					      NULL);
		/* success or fatal error */
		if (error != -EAGAIN)
			break;

		error = FUNC3(tpp);
		if (error)
			break;
		tp = *tpp;

		/*
		 * Redirty both inodes so they can relog and keep the log tail
		 * moving forward.
		 */
		FUNC1(tp, ip, 0);
		FUNC1(tp, tmpip, 0);
		FUNC2(tp, ip, XFS_ILOG_CORE);
		FUNC2(tp, tmpip, XFS_ILOG_CORE);
	} while (true);

	return error;
}