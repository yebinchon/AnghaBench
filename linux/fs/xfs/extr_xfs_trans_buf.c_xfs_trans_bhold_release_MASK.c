#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_5__ {int /*<<< orphan*/ * b_transp; struct xfs_buf_log_item* b_log_item; } ;
typedef  TYPE_2__ xfs_buf_t ;
struct TYPE_4__ {int blf_flags; } ;
struct xfs_buf_log_item {int bli_flags; int /*<<< orphan*/  bli_refcount; TYPE_1__ __bli_format; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XFS_BLF_CANCEL ; 
 int XFS_BLI_HOLD ; 
 int XFS_BLI_STALE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_buf_log_item*) ; 

void
FUNC3(
	xfs_trans_t		*tp,
	xfs_buf_t		*bp)
{
	struct xfs_buf_log_item	*bip = bp->b_log_item;

	FUNC0(bp->b_transp == tp);
	FUNC0(bip != NULL);
	FUNC0(!(bip->bli_flags & XFS_BLI_STALE));
	FUNC0(!(bip->__bli_format.blf_flags & XFS_BLF_CANCEL));
	FUNC0(FUNC1(&bip->bli_refcount) > 0);
	FUNC0(bip->bli_flags & XFS_BLI_HOLD);

	bip->bli_flags &= ~XFS_BLI_HOLD;
	FUNC2(bip);
}