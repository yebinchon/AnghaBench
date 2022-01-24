#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tcf_proto {TYPE_1__* chain; } ;
struct tcf_block {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct flow_cls_offload {unsigned long cookie; TYPE_5__* rule; int /*<<< orphan*/  classid; int /*<<< orphan*/  command; int /*<<< orphan*/  common; } ;
struct TYPE_10__ {int /*<<< orphan*/  classid; } ;
struct cls_fl_filter {int flags; int /*<<< orphan*/  in_hw_count; int /*<<< orphan*/  exts; TYPE_4__ res; int /*<<< orphan*/  mkey; TYPE_2__* mask; } ;
struct TYPE_9__ {int /*<<< orphan*/ * key; int /*<<< orphan*/ * mask; int /*<<< orphan*/ * dissector; } ;
struct TYPE_11__ {int /*<<< orphan*/  action; TYPE_3__ match; } ;
struct TYPE_8__ {int /*<<< orphan*/  key; int /*<<< orphan*/  dissector; } ;
struct TYPE_7__ {struct tcf_block* block; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FLOW_CLS_REPLACE ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int TCA_CLS_FLAGS_IN_HW ; 
 int /*<<< orphan*/  TC_SETUP_CLSFLOWER ; 
 int /*<<< orphan*/  FUNC1 (struct tcf_proto*,struct cls_fl_filter*,int,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct tcf_proto*,int,struct netlink_ext_ack*) ; 
 int FUNC6 (struct tcf_block*,struct tcf_proto*,int /*<<< orphan*/ ,struct flow_cls_offload*,int,int*,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct tcf_proto *tp,
				struct cls_fl_filter *f, bool rtnl_held,
				struct netlink_ext_ack *extack)
{
	struct tcf_block *block = tp->chain->block;
	struct flow_cls_offload cls_flower = {};
	bool skip_sw = FUNC8(f->flags);
	int err = 0;

	cls_flower.rule = FUNC2(FUNC9(&f->exts));
	if (!cls_flower.rule)
		return -ENOMEM;

	FUNC5(&cls_flower.common, tp, f->flags, extack);
	cls_flower.command = FLOW_CLS_REPLACE;
	cls_flower.cookie = (unsigned long) f;
	cls_flower.rule->match.dissector = &f->mask->dissector;
	cls_flower.rule->match.mask = &f->mask->key;
	cls_flower.rule->match.key = &f->mkey;
	cls_flower.classid = f->res.classid;

	err = FUNC7(&cls_flower.rule->action, &f->exts,
				   rtnl_held);
	if (err) {
		FUNC3(cls_flower.rule);
		if (skip_sw) {
			FUNC0(extack, "Failed to setup flow action");
			return err;
		}
		return 0;
	}

	err = FUNC6(block, tp, TC_SETUP_CLSFLOWER, &cls_flower,
			      skip_sw, &f->flags, &f->in_hw_count, rtnl_held);
	FUNC4(&cls_flower.rule->action);
	FUNC3(cls_flower.rule);

	if (err) {
		FUNC1(tp, f, rtnl_held, NULL);
		return err;
	}

	if (skip_sw && !(f->flags & TCA_CLS_FLAGS_IN_HW))
		return -EINVAL;

	return 0;
}