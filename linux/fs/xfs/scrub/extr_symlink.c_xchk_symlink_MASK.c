#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xfs_scrub {int /*<<< orphan*/  buf; struct xfs_inode* ip; } ;
struct TYPE_4__ {scalar_t__ di_size; } ;
struct xfs_inode {TYPE_1__ i_d; } ;
struct TYPE_5__ {int /*<<< orphan*/  if_data; } ;
struct xfs_ifork {int if_flags; TYPE_2__ if_u1; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_6__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct xfs_inode*) ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int XFS_IFINLINE ; 
 scalar_t__ FUNC2 (struct xfs_inode*) ; 
 struct xfs_ifork* FUNC3 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ XFS_SYMLINK_MAXLEN ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_scrub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_scrub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xfs_inode*,int /*<<< orphan*/ ) ; 

int
FUNC8(
	struct xfs_scrub	*sc)
{
	struct xfs_inode	*ip = sc->ip;
	struct xfs_ifork	*ifp;
	loff_t			len;
	int			error = 0;

	if (!FUNC0(FUNC1(ip)->i_mode))
		return -ENOENT;
	ifp = FUNC3(ip, XFS_DATA_FORK);
	len = ip->i_d.di_size;

	/* Plausible size? */
	if (len > XFS_SYMLINK_MAXLEN || len <= 0) {
		FUNC6(sc, XFS_DATA_FORK, 0);
		goto out;
	}

	/* Inline symlink? */
	if (ifp->if_flags & XFS_IFINLINE) {
		if (len > FUNC2(ip) ||
		    len > FUNC4(ifp->if_u1.if_data, FUNC2(ip)))
			FUNC6(sc, XFS_DATA_FORK, 0);
		goto out;
	}

	/* Remote symlink; must read the contents. */
	error = FUNC7(sc->ip, sc->buf);
	if (!FUNC5(sc, XFS_DATA_FORK, 0, &error))
		goto out;
	if (FUNC4(sc->buf, XFS_SYMLINK_MAXLEN) < len)
		FUNC6(sc, XFS_DATA_FORK, 0);
out:
	return error;
}