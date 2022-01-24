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
struct xfs_trans {int /*<<< orphan*/  t_items; TYPE_1__* t_mountp; } ;
struct xfs_log_item {scalar_t__ li_ailp; int /*<<< orphan*/  li_trans; int /*<<< orphan*/  li_flags; TYPE_1__* li_mountp; } ;
struct TYPE_2__ {scalar_t__ m_ail; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_LI_DIRTY ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_trans*,int /*<<< orphan*/ ) ; 

void
FUNC5(
	struct xfs_trans	*tp,
	struct xfs_log_item	*lip)
{
	FUNC0(lip->li_mountp == tp->t_mountp);
	FUNC0(lip->li_ailp == tp->t_mountp->m_ail);
	FUNC0(FUNC2(&lip->li_trans));
	FUNC0(!FUNC3(XFS_LI_DIRTY, &lip->li_flags));

	FUNC1(&lip->li_trans, &tp->t_items);
	FUNC4(tp, _RET_IP_);
}