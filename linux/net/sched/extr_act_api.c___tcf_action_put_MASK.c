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
struct tcf_idrinfo {int /*<<< orphan*/  lock; int /*<<< orphan*/  action_idr; } ;
struct tc_action {int /*<<< orphan*/  tcfa_bindcnt; int /*<<< orphan*/  tcfa_index; int /*<<< orphan*/  tcfa_refcnt; struct tcf_idrinfo* idrinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tc_action*) ; 

__attribute__((used)) static int FUNC5(struct tc_action *p, bool bind)
{
	struct tcf_idrinfo *idrinfo = p->idrinfo;

	if (FUNC3(&p->tcfa_refcnt, &idrinfo->lock)) {
		if (bind)
			FUNC0(&p->tcfa_bindcnt);
		FUNC1(&idrinfo->action_idr, p->tcfa_index);
		FUNC2(&idrinfo->lock);

		FUNC4(p);
		return 1;
	}

	if (bind)
		FUNC0(&p->tcfa_bindcnt);

	return 0;
}