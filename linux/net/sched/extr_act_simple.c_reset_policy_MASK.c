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
struct tcf_proto {int dummy; } ;
struct tcf_defact {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  tcfd_defdata; } ;
struct tcf_chain {int dummy; } ;
struct tc_defact {int /*<<< orphan*/  action; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIMP_MAX_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nlattr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct tcf_proto*,struct tcf_chain**,struct netlink_ext_ack*) ; 
 struct tcf_chain* FUNC5 (struct tc_action*,int /*<<< orphan*/ ,struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcf_chain*) ; 
 struct tcf_defact* FUNC7 (struct tc_action*) ; 

__attribute__((used)) static int FUNC8(struct tc_action *a, const struct nlattr *defdata,
			struct tc_defact *p, struct tcf_proto *tp,
			struct netlink_ext_ack *extack)
{
	struct tcf_chain *goto_ch = NULL;
	struct tcf_defact *d;
	int err;

	err = FUNC4(p->action, tp, &goto_ch, extack);
	if (err < 0)
		return err;
	d = FUNC7(a);
	FUNC2(&d->tcf_lock);
	goto_ch = FUNC5(a, p->action, goto_ch);
	FUNC0(d->tcfd_defdata, 0, SIMP_MAX_DATA);
	FUNC1(d->tcfd_defdata, defdata, SIMP_MAX_DATA);
	FUNC3(&d->tcf_lock);
	if (goto_ch)
		FUNC6(goto_ch);
	return 0;
}