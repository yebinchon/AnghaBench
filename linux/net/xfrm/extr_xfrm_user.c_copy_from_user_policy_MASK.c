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
struct TYPE_2__ {int /*<<< orphan*/  family; } ;
struct xfrm_userpolicy_info {TYPE_1__ sel; int /*<<< orphan*/  flags; int /*<<< orphan*/  action; TYPE_1__ lft; int /*<<< orphan*/  index; int /*<<< orphan*/  priority; } ;
struct xfrm_policy {int /*<<< orphan*/  family; int /*<<< orphan*/  flags; int /*<<< orphan*/  action; int /*<<< orphan*/  lft; int /*<<< orphan*/  selector; int /*<<< orphan*/  index; int /*<<< orphan*/  priority; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC1(struct xfrm_policy *xp, struct xfrm_userpolicy_info *p)
{
	xp->priority = p->priority;
	xp->index = p->index;
	FUNC0(&xp->selector, &p->sel, sizeof(xp->selector));
	FUNC0(&xp->lft, &p->lft, sizeof(xp->lft));
	xp->action = p->action;
	xp->flags = p->flags;
	xp->family = p->sel.family;
	/* XXX xp->share = p->share; */
}