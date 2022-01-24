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
struct tcf_proto {TYPE_1__* chain; } ;
struct tcf_block {int dummy; } ;
struct tc_cls_matchall_offload {unsigned long cookie; int /*<<< orphan*/  command; int /*<<< orphan*/  common; } ;
struct netlink_ext_ack {int dummy; } ;
struct cls_mall_head {int /*<<< orphan*/  in_hw_count; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {struct tcf_block* block; } ;

/* Variables and functions */
 int /*<<< orphan*/  TC_CLSMATCHALL_DESTROY ; 
 int /*<<< orphan*/  TC_SETUP_CLSMATCHALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct tcf_proto*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcf_block*,struct tcf_proto*,int /*<<< orphan*/ ,struct tc_cls_matchall_offload*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(struct tcf_proto *tp,
				   struct cls_mall_head *head,
				   unsigned long cookie,
				   struct netlink_ext_ack *extack)
{
	struct tc_cls_matchall_offload cls_mall = {};
	struct tcf_block *block = tp->chain->block;

	FUNC0(&cls_mall.common, tp, head->flags, extack);
	cls_mall.command = TC_CLSMATCHALL_DESTROY;
	cls_mall.cookie = cookie;

	FUNC1(block, tp, TC_SETUP_CLSMATCHALL, &cls_mall, false,
			    &head->flags, &head->in_hw_count, true);
}