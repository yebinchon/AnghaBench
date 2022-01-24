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
typedef  int /*<<< orphan*/  xfs_failaddr_t ;
typedef  int /*<<< orphan*/  xfs_daddr_t ;
struct xfs_mount {int /*<<< orphan*/  m_sb; TYPE_1__* m_attr_geo; } ;
struct xfs_buf {char* b_addr; int /*<<< orphan*/  b_length; int /*<<< orphan*/  b_bn; struct xfs_mount* b_mount; } ;
struct TYPE_2__ {int blksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int EFSBADCRC ; 
 int EFSCORRUPTED ; 
 int /*<<< orphan*/  XFS_ATTR3_RMT_CRC_OFF ; 
 int /*<<< orphan*/  __this_address ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,struct xfs_buf*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(
	struct xfs_buf	*bp,
	bool		check_crc,
	xfs_failaddr_t	*failaddr)
{
	struct xfs_mount *mp = bp->b_mount;
	char		*ptr;
	int		len;
	xfs_daddr_t	bno;
	int		blksize = mp->m_attr_geo->blksize;

	/* no verification of non-crc buffers */
	if (!FUNC4(&mp->m_sb))
		return 0;

	ptr = bp->b_addr;
	bno = bp->b_bn;
	len = FUNC1(bp->b_length);
	FUNC0(len >= blksize);

	while (len > 0) {
		if (check_crc &&
		    !FUNC5(ptr, blksize, XFS_ATTR3_RMT_CRC_OFF)) {
			*failaddr = __this_address;
			return -EFSBADCRC;
		}
		*failaddr = FUNC3(mp, bp, ptr, blksize, bno);
		if (*failaddr)
			return -EFSCORRUPTED;
		len -= blksize;
		ptr += blksize;
		bno += FUNC2(blksize);
	}

	if (len != 0) {
		*failaddr = __this_address;
		return -EFSCORRUPTED;
	}

	return 0;
}