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
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_5__ {int /*<<< orphan*/  qli_item; TYPE_2__* qli_dquot; } ;
struct TYPE_6__ {TYPE_1__ q_logitem; } ;
typedef  TYPE_2__ xfs_dquot_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC3(
	xfs_trans_t	*tp,
	xfs_dquot_t	*dqp)
{
	FUNC0(FUNC1(dqp));
	FUNC0(dqp->q_logitem.qli_dquot == dqp);

	/*
	 * Get a log_item_desc to point at the new item.
	 */
	FUNC2(tp, &dqp->q_logitem.qli_item);
}