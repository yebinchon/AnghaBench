#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int sb_dblocks; int sb_imax_pct; int sb_agblocks; } ;
typedef  TYPE_1__ xfs_sb_t ;
typedef  scalar_t__ xfs_ino_t ;
typedef  scalar_t__ xfs_agnumber_t ;
typedef  int /*<<< orphan*/  xfs_agino_t ;
typedef  int uint64_t ;
struct xfs_perag {int pagi_inodeok; int pagf_metadata; } ;
struct xfs_mount {int m_flags; TYPE_1__ m_sb; } ;
struct TYPE_4__ {scalar_t__ maxicount; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,int) ; 
 scalar_t__ FUNC2 (struct xfs_mount*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ XFS_MAXINUMBER_32 ; 
 int XFS_MOUNT_32BITINODES ; 
 int XFS_MOUNT_SMALL_INUMS ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 struct xfs_perag* FUNC4 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_perag*) ; 

xfs_agnumber_t
FUNC6(
	struct xfs_mount *mp,
	xfs_agnumber_t	agcount)
{
	xfs_agnumber_t	index;
	xfs_agnumber_t	maxagi = 0;
	xfs_sb_t	*sbp = &mp->m_sb;
	xfs_agnumber_t	max_metadata;
	xfs_agino_t	agino;
	xfs_ino_t	ino;

	/*
	 * Calculate how much should be reserved for inodes to meet
	 * the max inode percentage.  Used only for inode32.
	 */
	if (FUNC0(mp)->maxicount) {
		uint64_t	icount;

		icount = sbp->sb_dblocks * sbp->sb_imax_pct;
		FUNC3(icount, 100);
		icount += sbp->sb_agblocks - 1;
		FUNC3(icount, sbp->sb_agblocks);
		max_metadata = icount;
	} else {
		max_metadata = agcount;
	}

	/* Get the last possible inode in the filesystem */
	agino =	FUNC1(mp, sbp->sb_agblocks - 1);
	ino = FUNC2(mp, agcount - 1, agino);

	/*
	 * If user asked for no more than 32-bit inodes, and the fs is
	 * sufficiently large, set XFS_MOUNT_32BITINODES if we must alter
	 * the allocator to accommodate the request.
	 */
	if ((mp->m_flags & XFS_MOUNT_SMALL_INUMS) && ino > XFS_MAXINUMBER_32)
		mp->m_flags |= XFS_MOUNT_32BITINODES;
	else
		mp->m_flags &= ~XFS_MOUNT_32BITINODES;

	for (index = 0; index < agcount; index++) {
		struct xfs_perag	*pag;

		ino = FUNC2(mp, index, agino);

		pag = FUNC4(mp, index);

		if (mp->m_flags & XFS_MOUNT_32BITINODES) {
			if (ino > XFS_MAXINUMBER_32) {
				pag->pagi_inodeok = 0;
				pag->pagf_metadata = 0;
			} else {
				pag->pagi_inodeok = 1;
				maxagi++;
				if (index < max_metadata)
					pag->pagf_metadata = 1;
				else
					pag->pagf_metadata = 0;
			}
		} else {
			pag->pagi_inodeok = 1;
			pag->pagf_metadata = 0;
		}

		FUNC5(pag);
	}

	return (mp->m_flags & XFS_MOUNT_32BITINODES) ? maxagi : agcount;
}