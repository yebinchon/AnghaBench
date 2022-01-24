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
struct xfs_log_item {struct xfs_buf* li_buf; int /*<<< orphan*/  li_flags; TYPE_1__* li_ailp; } ;
struct xfs_buf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ail_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_LI_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_buf*) ; 

__attribute__((used)) static inline void
FUNC3(
	struct xfs_log_item	*lip,
	struct xfs_buf		*bp)
{
	FUNC0(&lip->li_ailp->ail_lock);

	if (!FUNC1(XFS_LI_FAILED, &lip->li_flags)) {
		FUNC2(bp);
		lip->li_buf = bp;
	}
}