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
typedef  int /*<<< orphan*/  u32 ;
struct tcf_idrinfo {int /*<<< orphan*/  lock; int /*<<< orphan*/  action_idr; } ;
struct tc_action_net {struct tcf_idrinfo* idrinfo; } ;
struct tc_action {int /*<<< orphan*/  tcfa_refcnt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tc_action*) ; 
 struct tc_action* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct tc_action_net *tn, struct tc_action **a, u32 index)
{
	struct tcf_idrinfo *idrinfo = tn->idrinfo;
	struct tc_action *p;

	FUNC2(&idrinfo->lock);
	p = FUNC1(&idrinfo->action_idr, index);
	if (FUNC0(p))
		p = NULL;
	else if (p)
		FUNC4(&p->tcfa_refcnt);
	FUNC3(&idrinfo->lock);

	if (p) {
		*a = p;
		return true;
	}
	return false;
}