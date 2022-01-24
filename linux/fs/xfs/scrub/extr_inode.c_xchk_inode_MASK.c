#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xfs_scrub {TYPE_2__* ip; TYPE_1__* sm; } ;
struct xfs_dinode {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  i_mode; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_ino; } ;
struct TYPE_5__ {int sm_flags; int /*<<< orphan*/  sm_ino; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (TYPE_2__*) ; 
 int XFS_SCRUB_OFLAG_CORRUPT ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_scrub*,struct xfs_dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_scrub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_scrub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_scrub*,int /*<<< orphan*/ ,struct xfs_dinode*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct xfs_dinode*,int /*<<< orphan*/ ) ; 

int
FUNC7(
	struct xfs_scrub	*sc)
{
	struct xfs_dinode	di;
	int			error = 0;

	/*
	 * If sc->ip is NULL, that means that the setup function called
	 * xfs_iget to look up the inode.  xfs_iget returned a EFSCORRUPTED
	 * and a NULL inode, so flag the corruption error and return.
	 */
	if (!sc->ip) {
		FUNC3(sc, sc->sm->sm_ino);
		return 0;
	}

	/* Scrub the inode core. */
	FUNC6(sc->ip, &di, 0);
	FUNC2(sc, &di, sc->ip->i_ino);
	if (sc->sm->sm_flags & XFS_SCRUB_OFLAG_CORRUPT)
		goto out;

	/*
	 * Look for discrepancies between file's data blocks and the reflink
	 * iflag.  We already checked the iflag against the file mode when
	 * we scrubbed the dinode.
	 */
	if (FUNC0(FUNC1(sc->ip)->i_mode))
		FUNC4(sc, sc->ip->i_ino);

	FUNC5(sc, sc->ip->i_ino, &di);
out:
	return error;
}