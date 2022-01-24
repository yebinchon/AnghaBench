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
typedef  scalar_t__ xfs_extlen_t ;
typedef  int /*<<< orphan*/  xfs_agnumber_t ;
typedef  scalar_t__ xfs_agblock_t ;
struct xfs_inode {int /*<<< orphan*/  i_mount; } ;
struct xfs_bmbt_irec {scalar_t__ br_blockcount; int /*<<< orphan*/  br_startblock; } ;

/* Variables and functions */
 scalar_t__ NULLAGBLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_inode*,struct xfs_bmbt_irec*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_bmbt_irec*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_inode*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,int) ; 

int
FUNC6(
	struct xfs_inode	*ip,
	struct xfs_bmbt_irec	*irec,
	bool			*shared)
{
	xfs_agnumber_t		agno;
	xfs_agblock_t		agbno;
	xfs_extlen_t		aglen;
	xfs_agblock_t		fbno;
	xfs_extlen_t		flen;
	int			error = 0;

	/* Holes, unwritten, and delalloc extents cannot be shared */
	if (!FUNC4(ip) || !FUNC3(irec)) {
		*shared = false;
		return 0;
	}

	FUNC2(ip, irec);

	agno = FUNC1(ip->i_mount, irec->br_startblock);
	agbno = FUNC0(ip->i_mount, irec->br_startblock);
	aglen = irec->br_blockcount;

	error = FUNC5(ip->i_mount, NULL, agno, agbno,
			aglen, &fbno, &flen, true);
	if (error)
		return error;

	*shared = false;
	if (fbno == NULLAGBLOCK) {
		/* No shared blocks at all. */
		return 0;
	} else if (fbno == agbno) {
		/*
		 * The start of this extent is shared.  Truncate the
		 * mapping at the end of the shared region so that a
		 * subsequent iteration starts at the start of the
		 * unshared region.
		 */
		irec->br_blockcount = flen;
		*shared = true;
		return 0;
	} else {
		/*
		 * There's a shared extent midway through this extent.
		 * Truncate the mapping at the start of the shared
		 * extent so that a subsequent iteration starts at the
		 * start of the shared region.
		 */
		irec->br_blockcount = fbno - agbno;
		return 0;
	}
}