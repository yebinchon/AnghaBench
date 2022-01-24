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
struct tcf_proto {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct fl_flow_tmplt {int dummy; } ;
struct fl_flow_mask {int /*<<< orphan*/  key; } ;
struct TYPE_2__ {int /*<<< orphan*/  classid; } ;
struct cls_fl_filter {int /*<<< orphan*/  key; int /*<<< orphan*/  mkey; TYPE_1__ res; int /*<<< orphan*/  exts; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 size_t TCA_FLOWER_CLASSID ; 
 int /*<<< orphan*/  FUNC1 (struct fl_flow_tmplt*,struct fl_flow_mask*) ; 
 int /*<<< orphan*/  FUNC2 (struct fl_flow_mask*) ; 
 int FUNC3 (struct net*,struct nlattr**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct fl_flow_mask*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct tcf_proto*,TYPE_1__*,unsigned long) ; 
 int FUNC9 (struct net*,struct tcf_proto*,struct nlattr**,struct nlattr*,int /*<<< orphan*/ *,int,int,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC10(struct net *net, struct tcf_proto *tp,
			struct cls_fl_filter *f, struct fl_flow_mask *mask,
			unsigned long base, struct nlattr **tb,
			struct nlattr *est, bool ovr,
			struct fl_flow_tmplt *tmplt, bool rtnl_held,
			struct netlink_ext_ack *extack)
{
	int err;

	err = FUNC9(net, tp, tb, est, &f->exts, ovr, rtnl_held,
				extack);
	if (err < 0)
		return err;

	if (tb[TCA_FLOWER_CLASSID]) {
		f->res.classid = FUNC5(tb[TCA_FLOWER_CLASSID]);
		if (!rtnl_held)
			FUNC6();
		FUNC8(tp, &f->res, base);
		if (!rtnl_held)
			FUNC7();
	}

	err = FUNC3(net, tb, &f->key, &mask->key, extack);
	if (err)
		return err;

	FUNC2(mask);
	FUNC4(&f->mkey, &f->key, mask);

	if (!FUNC1(tmplt, mask)) {
		FUNC0(extack, "Mask does not fit the template");
		return -EINVAL;
	}

	return 0;
}