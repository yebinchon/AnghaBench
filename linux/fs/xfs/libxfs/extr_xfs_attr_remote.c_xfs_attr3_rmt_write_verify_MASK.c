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
typedef  int /*<<< orphan*/  xfs_daddr_t ;
struct xfs_mount {int /*<<< orphan*/  m_sb; TYPE_1__* m_attr_geo; } ;
struct xfs_buf {char* b_addr; int /*<<< orphan*/  b_length; int /*<<< orphan*/  b_bn; struct xfs_mount* b_mount; } ;
struct xfs_attr3_rmt_hdr {scalar_t__ rm_lsn; } ;
struct TYPE_2__ {int blksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  EFSCORRUPTED ; 
 int /*<<< orphan*/  NULLCOMMITLSN ; 
 int /*<<< orphan*/  XFS_ATTR3_RMT_CRC_OFF ; 
 scalar_t__ __this_address ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct xfs_mount*,struct xfs_buf*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_buf*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC8(
	struct xfs_buf	*bp)
{
	struct xfs_mount *mp = bp->b_mount;
	xfs_failaddr_t	fa;
	int		blksize = mp->m_attr_geo->blksize;
	char		*ptr;
	int		len;
	xfs_daddr_t	bno;

	/* no verification of non-crc buffers */
	if (!FUNC5(&mp->m_sb))
		return;

	ptr = bp->b_addr;
	bno = bp->b_bn;
	len = FUNC1(bp->b_length);
	FUNC0(len >= blksize);

	while (len > 0) {
		struct xfs_attr3_rmt_hdr *rmt = (struct xfs_attr3_rmt_hdr *)ptr;

		fa = FUNC4(mp, bp, ptr, blksize, bno);
		if (fa) {
			FUNC7(bp, -EFSCORRUPTED, fa);
			return;
		}

		/*
		 * Ensure we aren't writing bogus LSNs to disk. See
		 * xfs_attr3_rmt_hdr_set() for the explanation.
		 */
		if (rmt->rm_lsn != FUNC3(NULLCOMMITLSN)) {
			FUNC7(bp, -EFSCORRUPTED, __this_address);
			return;
		}
		FUNC6(ptr, blksize, XFS_ATTR3_RMT_CRC_OFF);

		len -= blksize;
		ptr += blksize;
		bno += FUNC2(blksize);
	}

	if (len != 0)
		FUNC7(bp, -EFSCORRUPTED, __this_address);
}