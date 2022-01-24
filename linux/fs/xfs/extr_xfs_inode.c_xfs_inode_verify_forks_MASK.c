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
typedef  scalar_t__ xfs_failaddr_t ;
struct xfs_inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * if_data; } ;
struct xfs_ifork {int /*<<< orphan*/  if_bytes; TYPE_1__ if_u1; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFSCORRUPTED ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 struct xfs_ifork* FUNC0 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfs_default_ifork_ops ; 
 scalar_t__ FUNC1 (struct xfs_inode*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct xfs_inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_inode*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

bool
FUNC4(
	struct xfs_inode	*ip)
{
	struct xfs_ifork	*ifp;
	xfs_failaddr_t		fa;

	fa = FUNC2(ip, &xfs_default_ifork_ops);
	if (fa) {
		ifp = FUNC0(ip, XFS_DATA_FORK);
		FUNC3(ip, -EFSCORRUPTED, "data fork",
				ifp->if_u1.if_data, ifp->if_bytes, fa);
		return false;
	}

	fa = FUNC1(ip, &xfs_default_ifork_ops);
	if (fa) {
		ifp = FUNC0(ip, XFS_ATTR_FORK);
		FUNC3(ip, -EFSCORRUPTED, "attr fork",
				ifp ? ifp->if_u1.if_data : NULL,
				ifp ? ifp->if_bytes : 0, fa);
		return false;
	}
	return true;
}