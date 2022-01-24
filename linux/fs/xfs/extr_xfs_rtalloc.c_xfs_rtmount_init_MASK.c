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
typedef  int /*<<< orphan*/  xfs_suminfo_t ;
typedef  scalar_t__ xfs_daddr_t ;
typedef  int uint ;
struct xfs_sb {scalar_t__ sb_rblocks; int sb_rextslog; int sb_rbmblocks; int /*<<< orphan*/  sb_blocksize; } ;
struct xfs_mount {int m_rsumlevels; int m_rsumsize; int /*<<< orphan*/ * m_rtdev_targp; struct xfs_sb m_sb; int /*<<< orphan*/ * m_rsumip; int /*<<< orphan*/  m_rbmip; } ;
struct xfs_buf {int dummy; } ;

/* Variables and functions */
 int EFBIG ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct xfs_mount*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct xfs_mount*,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct xfs_buf**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_mount*,char*,...) ; 

int				/* error */
FUNC6(
	struct xfs_mount	*mp)	/* file system mount structure */
{
	struct xfs_buf		*bp;	/* buffer for last block of subvolume */
	struct xfs_sb		*sbp;	/* filesystem superblock copy in mount */
	xfs_daddr_t		d;	/* address of last block of subvolume */
	int			error;

	sbp = &mp->m_sb;
	if (sbp->sb_rblocks == 0)
		return 0;
	if (mp->m_rtdev_targp == NULL) {
		FUNC5(mp,
	"Filesystem has a realtime volume, use rtdev=device option");
		return -ENODEV;
	}
	mp->m_rsumlevels = sbp->sb_rextslog + 1;
	mp->m_rsumsize =
		(uint)sizeof(xfs_suminfo_t) * mp->m_rsumlevels *
		sbp->sb_rbmblocks;
	mp->m_rsumsize = FUNC2(mp->m_rsumsize, sbp->sb_blocksize);
	mp->m_rbmip = *(mp->m_rsumip = NULL);
	/*
	 * Check that the realtime section is an ok size.
	 */
	d = (xfs_daddr_t)FUNC1(mp, mp->m_sb.sb_rblocks);
	if (FUNC0(mp, d) != mp->m_sb.sb_rblocks) {
		FUNC5(mp, "realtime mount -- %llu != %llu",
			(unsigned long long) FUNC0(mp, d),
			(unsigned long long) mp->m_sb.sb_rblocks);
		return -EFBIG;
	}
	error = FUNC3(mp->m_rtdev_targp,
					d - FUNC1(mp, 1),
					FUNC1(mp, 1), 0, &bp, NULL);
	if (error) {
		FUNC5(mp, "realtime device size check failed");
		return error;
	}
	FUNC4(bp);
	return 0;
}