#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int t_flags; } ;
typedef  TYPE_4__ xfs_trans_t ;
struct TYPE_13__ {int b_flags; TYPE_4__* b_transp; struct xfs_buf_log_item* b_log_item; } ;
typedef  TYPE_5__ xfs_buf_t ;
typedef  int /*<<< orphan*/  uint ;
struct TYPE_11__ {int /*<<< orphan*/  li_flags; } ;
struct TYPE_9__ {int blf_flags; } ;
struct xfs_buf_log_item {int bli_flags; int bli_format_count; TYPE_3__ bli_item; TYPE_2__* bli_formats; TYPE_1__ __bli_format; int /*<<< orphan*/  bli_refcount; } ;
struct TYPE_10__ {int blf_map_size; int /*<<< orphan*/  blf_data_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XBF_STALE ; 
 int XFS_BLFT_MASK ; 
 int XFS_BLF_CANCEL ; 
 int XFS_BLF_INODE_BUF ; 
 int XFS_BLI_DIRTY ; 
 int XFS_BLI_INODE_BUF ; 
 int XFS_BLI_LOGGED ; 
 int XFS_BLI_STALE ; 
 int /*<<< orphan*/  XFS_LI_DIRTY ; 
 int XFS_TRANS_DIRTY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_buf_log_item*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 

void
FUNC7(
	xfs_trans_t		*tp,
	xfs_buf_t		*bp)
{
	struct xfs_buf_log_item	*bip = bp->b_log_item;
	int			i;

	FUNC0(bp->b_transp == tp);
	FUNC0(bip != NULL);
	FUNC0(FUNC1(&bip->bli_refcount) > 0);

	FUNC5(bip);

	if (bip->bli_flags & XFS_BLI_STALE) {
		/*
		 * If the buffer is already invalidated, then
		 * just return.
		 */
		FUNC0(bp->b_flags & XBF_STALE);
		FUNC0(!(bip->bli_flags & (XFS_BLI_LOGGED | XFS_BLI_DIRTY)));
		FUNC0(!(bip->__bli_format.blf_flags & XFS_BLF_INODE_BUF));
		FUNC0(!(bip->__bli_format.blf_flags & XFS_BLFT_MASK));
		FUNC0(bip->__bli_format.blf_flags & XFS_BLF_CANCEL);
		FUNC0(FUNC4(XFS_LI_DIRTY, &bip->bli_item.li_flags));
		FUNC0(tp->t_flags & XFS_TRANS_DIRTY);
		return;
	}

	FUNC6(bp);

	bip->bli_flags |= XFS_BLI_STALE;
	bip->bli_flags &= ~(XFS_BLI_INODE_BUF | XFS_BLI_LOGGED | XFS_BLI_DIRTY);
	bip->__bli_format.blf_flags &= ~XFS_BLF_INODE_BUF;
	bip->__bli_format.blf_flags |= XFS_BLF_CANCEL;
	bip->__bli_format.blf_flags &= ~XFS_BLFT_MASK;
	for (i = 0; i < bip->bli_format_count; i++) {
		FUNC2(bip->bli_formats[i].blf_data_map, 0,
		       (bip->bli_formats[i].blf_map_size * sizeof(uint)));
	}
	FUNC3(XFS_LI_DIRTY, &bip->bli_item.li_flags);
	tp->t_flags |= XFS_TRANS_DIRTY;
}