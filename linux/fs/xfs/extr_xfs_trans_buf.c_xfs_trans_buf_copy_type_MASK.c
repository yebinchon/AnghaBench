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
struct xfs_buf_log_item {int /*<<< orphan*/  __bli_format; } ;
struct xfs_buf {struct xfs_buf_log_item* b_log_item; } ;
typedef  enum xfs_blft { ____Placeholder_xfs_blft } xfs_blft ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

void
FUNC2(
	struct xfs_buf		*dst_bp,
	struct xfs_buf		*src_bp)
{
	struct xfs_buf_log_item	*sbip = src_bp->b_log_item;
	struct xfs_buf_log_item	*dbip = dst_bp->b_log_item;
	enum xfs_blft		type;

	type = FUNC0(&sbip->__bli_format);
	FUNC1(&dbip->__bli_format, type);
}