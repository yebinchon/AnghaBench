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
struct tc_action {int /*<<< orphan*/  tcfa_index; TYPE_1__* idrinfo; int /*<<< orphan*/  tcfa_refcnt; int /*<<< orphan*/  tcfa_bindcnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  action_idr; } ;

/* Variables and functions */
 int ACT_P_DELETED ; 
 int EPERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tc_action*) ; 

__attribute__((used)) static int FUNC4(struct tc_action *p)
{
	if (FUNC0(&p->tcfa_bindcnt) > 0)
		return -EPERM;

	if (FUNC2(&p->tcfa_refcnt)) {
		FUNC1(&p->idrinfo->action_idr, p->tcfa_index);
		FUNC3(p);
		return ACT_P_DELETED;
	}

	return 0;
}