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
typedef  int /*<<< orphan*/  u32 ;
struct tcf_idrinfo {int /*<<< orphan*/  lock; int /*<<< orphan*/  action_idr; } ;
struct tc_action {int /*<<< orphan*/  tcfa_index; TYPE_1__* ops; int /*<<< orphan*/  tcfa_refcnt; int /*<<< orphan*/  tcfa_bindcnt; } ;
struct module {int dummy; } ;
struct TYPE_2__ {struct module* owner; } ;

/* Variables and functions */
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tc_action* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tc_action* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct module*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct tc_action*) ; 

__attribute__((used)) static int FUNC9(struct tcf_idrinfo *idrinfo, u32 index)
{
	struct tc_action *p;
	int ret = 0;

	FUNC5(&idrinfo->lock);
	p = FUNC2(&idrinfo->action_idr, index);
	if (!p) {
		FUNC6(&idrinfo->lock);
		return -ENOENT;
	}

	if (!FUNC1(&p->tcfa_bindcnt)) {
		if (FUNC7(&p->tcfa_refcnt)) {
			struct module *owner = p->ops->owner;

			FUNC0(p != FUNC3(&idrinfo->action_idr,
						p->tcfa_index));
			FUNC6(&idrinfo->lock);

			FUNC8(p);
			FUNC4(owner);
			return 0;
		}
		ret = 0;
	} else {
		ret = -EPERM;
	}

	FUNC6(&idrinfo->lock);
	return ret;
}