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
typedef  int u32 ;
struct tcf_idrinfo {int /*<<< orphan*/  lock; int /*<<< orphan*/  action_idr; } ;
struct tc_action_net {struct tcf_idrinfo* idrinfo; } ;
struct tc_action {int /*<<< orphan*/  tcfa_bindcnt; int /*<<< orphan*/  tcfa_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct tc_action*) ; 
 int UINT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ) ; 
 struct tc_action* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct tc_action_net *tn, u32 *index,
			struct tc_action **a, int bind)
{
	struct tcf_idrinfo *idrinfo = tn->idrinfo;
	struct tc_action *p;
	int ret;

again:
	FUNC6(&idrinfo->lock);
	if (*index) {
		p = FUNC4(&idrinfo->action_idr, *index);
		if (FUNC1(p)) {
			/* This means that another process allocated
			 * index but did not assign the pointer yet.
			 */
			FUNC7(&idrinfo->lock);
			goto again;
		}

		if (p) {
			FUNC8(&p->tcfa_refcnt);
			if (bind)
				FUNC2(&p->tcfa_bindcnt);
			*a = p;
			ret = 1;
		} else {
			*a = NULL;
			ret = FUNC3(&idrinfo->action_idr, NULL, index,
					    *index, GFP_KERNEL);
			if (!ret)
				FUNC5(&idrinfo->action_idr,
					    FUNC0(-EBUSY), *index);
		}
	} else {
		*index = 1;
		*a = NULL;
		ret = FUNC3(&idrinfo->action_idr, NULL, index,
				    UINT_MAX, GFP_KERNEL);
		if (!ret)
			FUNC5(&idrinfo->action_idr, FUNC0(-EBUSY),
				    *index);
	}
	FUNC7(&idrinfo->lock);
	return ret;
}