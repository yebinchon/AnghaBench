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
struct xfs_sb {int dummy; } ;
struct xfs_mount {int /*<<< orphan*/  m_sb; } ;
struct xfs_dsb {scalar_t__ sb_magicnum; scalar_t__ sb_crc; int /*<<< orphan*/  sb_versionnum; } ;
struct xfs_buf {scalar_t__ b_bn; struct xfs_mount* b_mount; } ;

/* Variables and functions */
 int EFSBADCRC ; 
 int EFSCORRUPTED ; 
 struct xfs_dsb* FUNC0 (struct xfs_buf*) ; 
 int /*<<< orphan*/  XFS_SB_CRC_OFF ; 
 scalar_t__ XFS_SB_DADDR ; 
 int /*<<< orphan*/  XFS_SB_MAGIC ; 
 int XFS_SB_VERSION_5 ; 
 int XFS_SB_VERSION_NUMBITS ; 
 int /*<<< orphan*/  __this_address ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_sb*,struct xfs_dsb*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_buf*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct xfs_mount*,struct xfs_buf*,struct xfs_sb*) ; 
 int FUNC8 (struct xfs_mount*,struct xfs_sb*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_buf*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(
	struct xfs_buf		*bp)
{
	struct xfs_sb		sb;
	struct xfs_mount	*mp = bp->b_mount;
	struct xfs_dsb		*dsb = FUNC0(bp);
	int			error;

	/*
	 * open code the version check to avoid needing to convert the entire
	 * superblock from disk order just to check the version number
	 */
	if (dsb->sb_magicnum == FUNC3(XFS_SB_MAGIC) &&
	    (((FUNC2(dsb->sb_versionnum) & XFS_SB_VERSION_NUMBITS) ==
						XFS_SB_VERSION_5) ||
	     dsb->sb_crc != 0)) {

		if (!FUNC5(bp, XFS_SB_CRC_OFF)) {
			/* Only fail bad secondaries on a known V5 filesystem */
			if (bp->b_bn == XFS_SB_DADDR ||
			    FUNC6(&mp->m_sb)) {
				error = -EFSBADCRC;
				goto out_error;
			}
		}
	}

	/*
	 * Check all the superblock fields.  Don't byteswap the xquota flags
	 * because _verify_common checks the on-disk values.
	 */
	FUNC1(&sb, FUNC0(bp), false);
	error = FUNC7(mp, bp, &sb);
	if (error)
		goto out_error;
	error = FUNC8(mp, &sb);

out_error:
	if (error == -EFSCORRUPTED || error == -EFSBADCRC)
		FUNC9(bp, error, __this_address);
	else if (error)
		FUNC4(bp, error);
}