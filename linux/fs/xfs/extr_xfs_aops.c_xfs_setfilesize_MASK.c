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
typedef  int /*<<< orphan*/  xfs_off_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;
struct TYPE_2__ {int /*<<< orphan*/  tr_fsyncts; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct xfs_mount*) ; 
 int FUNC1 (struct xfs_inode*,struct xfs_trans*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC2 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_trans**) ; 

int
FUNC3(
	struct xfs_inode	*ip,
	xfs_off_t		offset,
	size_t			size)
{
	struct xfs_mount	*mp = ip->i_mount;
	struct xfs_trans	*tp;
	int			error;

	error = FUNC2(mp, &FUNC0(mp)->tr_fsyncts, 0, 0, 0, &tp);
	if (error)
		return error;

	return FUNC1(ip, tp, offset, size);
}