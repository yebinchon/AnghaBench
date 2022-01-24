#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* t_mountp; } ;
typedef  TYPE_2__ xfs_trans_t ;
typedef  int /*<<< orphan*/  xfs_dir2_leaf_entry_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_hdr_t ;
typedef  int /*<<< orphan*/  xfs_dir2_block_tail_t ;
typedef  int /*<<< orphan*/  uint ;
struct xfs_buf {int /*<<< orphan*/ * b_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  m_dir_geo; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct xfs_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(
	xfs_trans_t		*tp,		/* transaction structure */
	struct xfs_buf		*bp,		/* block buffer */
	int			first,		/* index of first logged leaf */
	int			last)		/* index of last logged leaf */
{
	xfs_dir2_data_hdr_t	*hdr = bp->b_addr;
	xfs_dir2_leaf_entry_t	*blp;
	xfs_dir2_block_tail_t	*btp;

	btp = FUNC1(tp->t_mountp->m_dir_geo, hdr);
	blp = FUNC0(btp);
	FUNC2(tp, bp, (uint)((char *)&blp[first] - (char *)hdr),
		(uint)((char *)&blp[last + 1] - (char *)hdr - 1));
}