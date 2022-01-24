#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  li_lv_shadow; } ;
struct TYPE_7__ {TYPE_1__ qli_item; } ;
struct TYPE_8__ {int /*<<< orphan*/  q_mount; int /*<<< orphan*/  q_qlock; TYPE_2__ q_logitem; int /*<<< orphan*/  q_lru; } ;
typedef  TYPE_3__ xfs_dquot_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfs_qm_dqzone ; 
 int /*<<< orphan*/  xs_qm_dquot ; 

void
FUNC6(
	xfs_dquot_t	*dqp)
{
	FUNC0(FUNC4(&dqp->q_lru));

	FUNC2(dqp->q_logitem.qli_item.li_lv_shadow);
	FUNC5(&dqp->q_qlock);

	FUNC1(dqp->q_mount, xs_qm_dquot);
	FUNC3(xfs_qm_dqzone, dqp);
}