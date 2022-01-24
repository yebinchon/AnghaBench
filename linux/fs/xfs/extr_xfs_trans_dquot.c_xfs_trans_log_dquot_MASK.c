#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  t_flags; } ;
typedef  TYPE_3__ xfs_trans_t ;
struct TYPE_8__ {int /*<<< orphan*/  li_flags; } ;
struct TYPE_9__ {TYPE_1__ qli_item; } ;
struct TYPE_11__ {TYPE_2__ q_logitem; } ;
typedef  TYPE_4__ xfs_dquot_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  XFS_LI_DIRTY ; 
 int /*<<< orphan*/  XFS_TRANS_DIRTY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(
	xfs_trans_t	*tp,
	xfs_dquot_t	*dqp)
{
	FUNC0(FUNC1(dqp));

	tp->t_flags |= XFS_TRANS_DIRTY;
	FUNC2(XFS_LI_DIRTY, &dqp->q_logitem.qli_item.li_flags);
}