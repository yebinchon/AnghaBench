#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * b_iodone; int /*<<< orphan*/  b_li_list; struct xfs_buf_log_item* b_log_item; } ;
typedef  TYPE_2__ xfs_buf_t ;
struct TYPE_6__ {int li_flags; } ;
struct xfs_buf_log_item {TYPE_1__ bli_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XFS_LI_IN_AIL ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_buf_log_item*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void
FUNC5(
	xfs_buf_t	*bp)
{
	struct xfs_buf_log_item	*bip = bp->b_log_item;

	FUNC2(bp, _RET_IP_);
	FUNC0(!(bip->bli_item.li_flags & XFS_LI_IN_AIL));

	bp->b_log_item = NULL;
	if (FUNC1(&bp->b_li_list))
		bp->b_iodone = NULL;

	FUNC4(bp);
	FUNC3(bip);
}