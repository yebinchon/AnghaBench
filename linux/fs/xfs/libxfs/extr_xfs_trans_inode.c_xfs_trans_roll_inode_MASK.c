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
struct xfs_inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xfs_trans**) ; 

int
FUNC3(
	struct xfs_trans	**tpp,
	struct xfs_inode	*ip)
{
	int			error;

	FUNC1(*tpp, ip, XFS_ILOG_CORE);
	error = FUNC2(tpp);
	if (!error)
		FUNC0(*tpp, ip, 0);
	return error;
}