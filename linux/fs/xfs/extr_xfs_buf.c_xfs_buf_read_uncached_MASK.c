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
typedef  int /*<<< orphan*/  xfs_daddr_t ;
struct xfs_buftarg {int dummy; } ;
struct xfs_buf_ops {int dummy; } ;
struct xfs_buf {int b_map_count; int b_error; struct xfs_buf_ops const* b_ops; int /*<<< orphan*/  b_flags; TYPE_1__* b_maps; int /*<<< orphan*/  b_bn; } ;
struct TYPE_2__ {int /*<<< orphan*/  bm_bn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  XBF_READ ; 
 int /*<<< orphan*/  XFS_BUF_DADDR_NULL ; 
 struct xfs_buf* FUNC1 (struct xfs_buftarg*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_buf*) ; 

int
FUNC4(
	struct xfs_buftarg	*target,
	xfs_daddr_t		daddr,
	size_t			numblks,
	int			flags,
	struct xfs_buf		**bpp,
	const struct xfs_buf_ops *ops)
{
	struct xfs_buf		*bp;

	*bpp = NULL;

	bp = FUNC1(target, numblks, flags);
	if (!bp)
		return -ENOMEM;

	/* set up the buffer for a read IO */
	FUNC0(bp->b_map_count == 1);
	bp->b_bn = XFS_BUF_DADDR_NULL;  /* always null for uncached buffers */
	bp->b_maps[0].bm_bn = daddr;
	bp->b_flags |= XBF_READ;
	bp->b_ops = ops;

	FUNC3(bp);
	if (bp->b_error) {
		int	error = bp->b_error;
		FUNC2(bp);
		return error;
	}

	*bpp = bp;
	return 0;
}