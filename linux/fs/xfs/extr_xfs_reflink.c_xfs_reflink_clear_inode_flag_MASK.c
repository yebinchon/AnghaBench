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
struct TYPE_2__ {int /*<<< orphan*/  di_flags2; } ;
struct xfs_inode {TYPE_1__ i_d; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULLFILEOFF ; 
 int /*<<< orphan*/  XFS_DIFLAG2_REFLINK ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_inode*) ; 
 int FUNC4 (struct xfs_inode*,struct xfs_trans**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct xfs_trans*,struct xfs_inode*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ) ; 

int
FUNC7(
	struct xfs_inode	*ip,
	struct xfs_trans	**tpp)
{
	bool			needs_flag;
	int			error = 0;

	FUNC0(FUNC3(ip));

	error = FUNC5(*tpp, ip, &needs_flag);
	if (error || needs_flag)
		return error;

	/*
	 * We didn't find any shared blocks so turn off the reflink flag.
	 * First, get rid of any leftover CoW mappings.
	 */
	error = FUNC4(ip, tpp, 0, NULLFILEOFF, true);
	if (error)
		return error;

	/* Clear the inode flag. */
	FUNC1(ip);
	ip->i_d.di_flags2 &= ~XFS_DIFLAG2_REFLINK;
	FUNC2(ip);
	FUNC6(*tpp, ip, XFS_ILOG_CORE);

	return error;
}