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
struct tcf_proto {TYPE_1__* chain; int /*<<< orphan*/  root; } ;
struct tcf_block {int dummy; } ;
struct tc_cls_matchall_offload {unsigned long cookie; TYPE_2__* rule; int /*<<< orphan*/  command; int /*<<< orphan*/  common; } ;
struct netlink_ext_ack {int dummy; } ;
struct cls_mall_head {int /*<<< orphan*/  in_hw_count; int /*<<< orphan*/  flags; int /*<<< orphan*/  exts; } ;
typedef  int /*<<< orphan*/  flow_setup_cb_t ;
struct TYPE_5__ {int /*<<< orphan*/  action; } ;
struct TYPE_4__ {struct tcf_block* block; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  TC_CLSMATCHALL_DESTROY ; 
 int /*<<< orphan*/  TC_CLSMATCHALL_REPLACE ; 
 int /*<<< orphan*/  TC_SETUP_CLSMATCHALL ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 struct cls_mall_head* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct tcf_proto*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC6 (struct tcf_block*,struct tcf_proto*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tc_cls_matchall_offload*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct tcf_proto *tp, bool add, flow_setup_cb_t *cb,
			  void *cb_priv, struct netlink_ext_ack *extack)
{
	struct cls_mall_head *head = FUNC3(tp->root);
	struct tc_cls_matchall_offload cls_mall = {};
	struct tcf_block *block = tp->chain->block;
	int err;

	if (FUNC8(head->flags))
		return 0;

	cls_mall.rule =	FUNC1(FUNC10(&head->exts));
	if (!cls_mall.rule)
		return -ENOMEM;

	FUNC5(&cls_mall.common, tp, head->flags, extack);
	cls_mall.command = add ?
		TC_CLSMATCHALL_REPLACE : TC_CLSMATCHALL_DESTROY;
	cls_mall.cookie = (unsigned long)head;

	err = FUNC7(&cls_mall.rule->action, &head->exts, true);
	if (err) {
		FUNC2(cls_mall.rule);
		if (add && FUNC9(head->flags)) {
			FUNC0(extack, "Failed to setup flow action");
			return err;
		}
		return 0;
	}

	err = FUNC6(block, tp, add, cb, TC_SETUP_CLSMATCHALL,
				    &cls_mall, cb_priv, &head->flags,
				    &head->in_hw_count);
	FUNC4(&cls_mall.rule->action);
	FUNC2(cls_mall.rule);

	if (err)
		return err;

	return 0;
}