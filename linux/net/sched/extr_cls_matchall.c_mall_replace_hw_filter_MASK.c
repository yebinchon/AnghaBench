#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tcf_proto {TYPE_1__* chain; } ;
struct tcf_block {int dummy; } ;
struct tc_cls_matchall_offload {unsigned long cookie; TYPE_2__* rule; int /*<<< orphan*/  command; int /*<<< orphan*/  common; } ;
struct netlink_ext_ack {int dummy; } ;
struct cls_mall_head {int flags; int /*<<< orphan*/  in_hw_count; int /*<<< orphan*/  exts; } ;
struct TYPE_5__ {int /*<<< orphan*/  action; } ;
struct TYPE_4__ {struct tcf_block* block; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int TCA_CLS_FLAGS_IN_HW ; 
 int /*<<< orphan*/  TC_CLSMATCHALL_REPLACE ; 
 int /*<<< orphan*/  TC_SETUP_CLSMATCHALL ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_proto*,struct cls_mall_head*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct tcf_proto*,int,struct netlink_ext_ack*) ; 
 int FUNC6 (struct tcf_block*,struct tcf_proto*,int /*<<< orphan*/ ,struct tc_cls_matchall_offload*,int,int*,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct tcf_proto *tp,
				  struct cls_mall_head *head,
				  unsigned long cookie,
				  struct netlink_ext_ack *extack)
{
	struct tc_cls_matchall_offload cls_mall = {};
	struct tcf_block *block = tp->chain->block;
	bool skip_sw = FUNC8(head->flags);
	int err;

	cls_mall.rule =	FUNC1(FUNC9(&head->exts));
	if (!cls_mall.rule)
		return -ENOMEM;

	FUNC5(&cls_mall.common, tp, head->flags, extack);
	cls_mall.command = TC_CLSMATCHALL_REPLACE;
	cls_mall.cookie = cookie;

	err = FUNC7(&cls_mall.rule->action, &head->exts, true);
	if (err) {
		FUNC2(cls_mall.rule);
		FUNC3(tp, head, cookie, NULL);
		if (skip_sw)
			FUNC0(extack, "Failed to setup flow action");
		else
			err = 0;

		return err;
	}

	err = FUNC6(block, tp, TC_SETUP_CLSMATCHALL, &cls_mall,
			      skip_sw, &head->flags, &head->in_hw_count, true);
	FUNC4(&cls_mall.rule->action);
	FUNC2(cls_mall.rule);

	if (err) {
		FUNC3(tp, head, cookie, NULL);
		return err;
	}

	if (skip_sw && !(head->flags & TCA_CLS_FLAGS_IN_HW))
		return -EINVAL;

	return 0;
}