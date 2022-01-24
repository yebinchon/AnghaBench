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
typedef  int /*<<< orphan*/  xfs_extlen_t ;
typedef  int /*<<< orphan*/  xfs_agnumber_t ;
typedef  scalar_t__ xfs_agblock_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;
struct xfs_ifork {int if_flags; } ;
struct xfs_iext_cursor {int dummy; } ;
struct xfs_bmbt_irec {scalar_t__ br_state; int /*<<< orphan*/  br_blockcount; int /*<<< orphan*/  br_startblock; } ;

/* Variables and functions */
 scalar_t__ NULLAGBLOCK ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 scalar_t__ XFS_EXT_NORM ; 
 scalar_t__ FUNC0 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int XFS_IFEXTENTS ; 
 struct xfs_ifork* FUNC2 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct xfs_inode*,struct xfs_ifork*,int /*<<< orphan*/ ,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ; 
 int FUNC5 (struct xfs_ifork*,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ; 
 int FUNC6 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xfs_mount*,struct xfs_trans*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int) ; 

int
FUNC8(
	struct xfs_trans		*tp,
	struct xfs_inode		*ip,
	bool				*has_shared)
{
	struct xfs_bmbt_irec		got;
	struct xfs_mount		*mp = ip->i_mount;
	struct xfs_ifork		*ifp;
	xfs_agnumber_t			agno;
	xfs_agblock_t			agbno;
	xfs_extlen_t			aglen;
	xfs_agblock_t			rbno;
	xfs_extlen_t			rlen;
	struct xfs_iext_cursor		icur;
	bool				found;
	int				error;

	ifp = FUNC2(ip, XFS_DATA_FORK);
	if (!(ifp->if_flags & XFS_IFEXTENTS)) {
		error = FUNC6(tp, ip, XFS_DATA_FORK);
		if (error)
			return error;
	}

	*has_shared = false;
	found = FUNC4(ip, ifp, 0, &icur, &got);
	while (found) {
		if (FUNC3(got.br_startblock) ||
		    got.br_state != XFS_EXT_NORM)
			goto next;
		agno = FUNC1(mp, got.br_startblock);
		agbno = FUNC0(mp, got.br_startblock);
		aglen = got.br_blockcount;

		error = FUNC7(mp, tp, agno, agbno, aglen,
				&rbno, &rlen, false);
		if (error)
			return error;
		/* Is there still a shared block here? */
		if (rbno != NULLAGBLOCK) {
			*has_shared = true;
			return 0;
		}
next:
		found = FUNC5(ifp, &icur, &got);
	}

	return 0;
}