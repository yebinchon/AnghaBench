#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct tcf_proto {TYPE_1__* chain; } ;
struct tcf_block {int dummy; } ;
struct tc_u_hnode {int /*<<< orphan*/  prio; int /*<<< orphan*/  handle; int /*<<< orphan*/  divisor; } ;
struct TYPE_4__ {int /*<<< orphan*/  prio; int /*<<< orphan*/  handle; int /*<<< orphan*/  divisor; } ;
struct tc_cls_u32_offload {TYPE_2__ hnode; int /*<<< orphan*/  command; int /*<<< orphan*/  common; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_3__ {struct tcf_block* block; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TC_CLSU32_NEW_HNODE ; 
 int /*<<< orphan*/  TC_SETUP_CLSU32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct tcf_proto*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC1 (struct tcf_block*,int /*<<< orphan*/ ,struct tc_cls_u32_offload*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_proto*,struct tc_u_hnode*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct tcf_proto *tp, struct tc_u_hnode *h,
				u32 flags, struct netlink_ext_ack *extack)
{
	struct tcf_block *block = tp->chain->block;
	struct tc_cls_u32_offload cls_u32 = {};
	bool skip_sw = FUNC2(flags);
	bool offloaded = false;
	int err;

	FUNC0(&cls_u32.common, tp, flags, extack);
	cls_u32.command = TC_CLSU32_NEW_HNODE;
	cls_u32.hnode.divisor = h->divisor;
	cls_u32.hnode.handle = h->handle;
	cls_u32.hnode.prio = h->prio;

	err = FUNC1(block, TC_SETUP_CLSU32, &cls_u32, skip_sw, true);
	if (err < 0) {
		FUNC3(tp, h, NULL);
		return err;
	} else if (err > 0) {
		offloaded = true;
	}

	if (skip_sw && !offloaded)
		return -EINVAL;

	return 0;
}