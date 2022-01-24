#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct tcmsg {scalar_t__ tcm_parent; int /*<<< orphan*/  tcm_handle; int /*<<< orphan*/  tcm_block_index; int /*<<< orphan*/  tcm_ifindex; int /*<<< orphan*/  tcm_info; } ;
struct tcf_proto {TYPE_3__* ops; } ;
struct tcf_chain_info {int dummy; } ;
struct tcf_chain {int /*<<< orphan*/  filter_chain_lock; } ;
struct tcf_block {TYPE_3__* ops; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct Qdisc {TYPE_2__* ops; } ;
struct TYPE_6__ {void* (* get ) (struct tcf_proto*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  kind; } ;
struct TYPE_5__ {TYPE_1__* cl_ops; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int IFNAMSIZ ; 
 scalar_t__ FUNC0 (struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int FUNC2 (struct tcf_proto*) ; 
 int QDISC_CLASS_OPS_DOIT_UNLOCKED ; 
 int /*<<< orphan*/  RTM_NEWTFILTER ; 
 size_t TCA_CHAIN ; 
 size_t TCA_KIND ; 
 int /*<<< orphan*/  TCA_MAX ; 
 scalar_t__ TC_ACT_EXT_VAL_MASK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct tcf_proto* FUNC5 (struct net*,struct Qdisc*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC6 (struct Qdisc*,scalar_t__,unsigned long*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC7 (struct net*,struct Qdisc**,scalar_t__*,int /*<<< orphan*/ ,int,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct nlattr*) ; 
 scalar_t__ FUNC11 (struct nlattr*,int /*<<< orphan*/ ) ; 
 struct tcmsg* FUNC12 (struct nlmsghdr*) ; 
 int FUNC13 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  rtm_tca_policy ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 struct net* FUNC16 (int /*<<< orphan*/ ) ; 
 void* FUNC17 (struct tcf_proto*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct Qdisc*,struct tcf_proto*,int) ; 
 struct tcf_chain* FUNC19 (struct tcf_proto*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC20 (struct tcf_chain*) ; 
 struct tcf_proto* FUNC21 (struct tcf_chain*,struct tcf_chain_info*,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC22 (struct nlattr*,char*) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (struct tcf_proto*,int,int /*<<< orphan*/ *) ; 
 int FUNC25 (struct net*,struct sk_buff*,struct nlmsghdr*,struct tcf_proto*,struct tcf_proto*,struct Qdisc*,scalar_t__,void*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC26 (struct tcf_proto*,void*) ; 

__attribute__((used)) static int FUNC27(struct sk_buff *skb, struct nlmsghdr *n,
			  struct netlink_ext_ack *extack)
{
	struct net *net = FUNC16(skb->sk);
	struct nlattr *tca[TCA_MAX + 1];
	char name[IFNAMSIZ];
	struct tcmsg *t;
	u32 protocol;
	u32 prio;
	u32 parent;
	u32 chain_index;
	struct Qdisc *q = NULL;
	struct tcf_chain_info chain_info;
	struct tcf_chain *chain = NULL;
	struct tcf_block *block = NULL;
	struct tcf_proto *tp = NULL;
	unsigned long cl = 0;
	void *fh = NULL;
	int err;
	bool rtnl_held = false;

	err = FUNC13(n, sizeof(*t), tca, TCA_MAX,
				     rtm_tca_policy, extack);
	if (err < 0)
		return err;

	t = FUNC12(n);
	protocol = FUNC4(t->tcm_info);
	prio = FUNC3(t->tcm_info);
	parent = t->tcm_parent;

	if (prio == 0) {
		FUNC1(extack, "Invalid filter command with priority of zero");
		return -ENOENT;
	}

	/* Find head of filter chain. */

	err = FUNC7(net, &q, &parent, t->tcm_ifindex, false, extack);
	if (err)
		return err;

	if (FUNC22(tca[TCA_KIND], name)) {
		FUNC1(extack, "Specified TC filter name too long");
		err = -EINVAL;
		goto errout;
	}
	/* Take rtnl mutex if block is shared (no qdisc found), qdisc is not
	 * unlocked, classifier type is not specified, classifier is not
	 * unlocked.
	 */
	if ((q && !(q->ops->cl_ops->flags & QDISC_CLASS_OPS_DOIT_UNLOCKED)) ||
	    !FUNC23(name)) {
		rtnl_held = true;
		FUNC14();
	}

	err = FUNC6(q, parent, &cl, t->tcm_ifindex, extack);
	if (err)
		goto errout;

	block = FUNC5(net, q, cl, t->tcm_ifindex, t->tcm_block_index,
				 extack);
	if (FUNC0(block)) {
		err = FUNC2(block);
		goto errout;
	}

	chain_index = tca[TCA_CHAIN] ? FUNC10(tca[TCA_CHAIN]) : 0;
	if (chain_index > TC_ACT_EXT_VAL_MASK) {
		FUNC1(extack, "Specified chain index exceeds upper limit");
		err = -EINVAL;
		goto errout;
	}
	chain = FUNC19(block, chain_index, false);
	if (!chain) {
		FUNC1(extack, "Cannot find specified filter chain");
		err = -EINVAL;
		goto errout;
	}

	FUNC8(&chain->filter_chain_lock);
	tp = FUNC21(chain, &chain_info, protocol,
			       prio, false);
	FUNC9(&chain->filter_chain_lock);
	if (!tp || FUNC0(tp)) {
		FUNC1(extack, "Filter with specified priority/protocol not found");
		err = tp ? FUNC2(tp) : -ENOENT;
		goto errout;
	} else if (tca[TCA_KIND] && FUNC11(tca[TCA_KIND], tp->ops->kind)) {
		FUNC1(extack, "Specified filter kind does not match existing one");
		err = -EINVAL;
		goto errout;
	}

	fh = tp->ops->get(tp, t->tcm_handle);

	if (!fh) {
		FUNC1(extack, "Specified filter handle not found");
		err = -ENOENT;
	} else {
		err = FUNC25(net, skb, n, tp, block, q, parent,
				     fh, RTM_NEWTFILTER, true, rtnl_held);
		if (err < 0)
			FUNC1(extack, "Failed to send filter notify message");
	}

	FUNC26(tp, fh);
errout:
	if (chain) {
		if (tp && !FUNC0(tp))
			FUNC24(tp, rtnl_held, NULL);
		FUNC20(chain);
	}
	FUNC18(q, block, rtnl_held);

	if (rtnl_held)
		FUNC15();

	return err;
}