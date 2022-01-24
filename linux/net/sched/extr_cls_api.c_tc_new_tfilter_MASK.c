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
struct tcf_chain {int /*<<< orphan*/  filter_chain_lock; TYPE_3__* tmplt_ops; scalar_t__ flushing; } ;
struct tcf_block {TYPE_3__* ops; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int /*<<< orphan*/  user_ns; } ;
struct Qdisc {int /*<<< orphan*/  flags; TYPE_2__* ops; } ;
struct TYPE_6__ {int (* change ) (struct net*,struct sk_buff*,struct tcf_proto*,unsigned long,int /*<<< orphan*/ ,struct nlattr**,void**,int /*<<< orphan*/ ,int,struct netlink_ext_ack*) ;void* (* get ) (struct tcf_proto*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  kind; } ;
struct TYPE_5__ {TYPE_1__* cl_ops; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EAGAIN ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPERM ; 
 int IFNAMSIZ ; 
 scalar_t__ FUNC0 (struct tcf_proto*) ; 
 int NLM_F_CREATE ; 
 int NLM_F_EXCL ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int FUNC2 (struct tcf_proto*) ; 
 int QDISC_CLASS_OPS_DOIT_UNLOCKED ; 
 int /*<<< orphan*/  RTM_NEWTFILTER ; 
 int /*<<< orphan*/  TCA_ACT_NOREPLACE ; 
 int /*<<< orphan*/  TCA_ACT_REPLACE ; 
 size_t TCA_CHAIN ; 
 size_t TCA_KIND ; 
 int /*<<< orphan*/  TCA_MAX ; 
 int /*<<< orphan*/  TCQ_F_CAN_BYPASS ; 
 scalar_t__ TC_ACT_EXT_VAL_MASK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct tcf_proto* FUNC6 (struct net*,struct Qdisc*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC7 (struct Qdisc*,scalar_t__,unsigned long*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC8 (struct net*,struct Qdisc**,scalar_t__*,int /*<<< orphan*/ ,int,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nlattr*) ; 
 scalar_t__ FUNC13 (struct nlattr*) ; 
 scalar_t__ FUNC14 (struct nlattr*,int /*<<< orphan*/ ) ; 
 struct tcmsg* FUNC15 (struct nlmsghdr*) ; 
 int FUNC16 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  rtm_tca_policy ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 struct net* FUNC19 (int /*<<< orphan*/ ) ; 
 void* FUNC20 (struct tcf_proto*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct net*,struct sk_buff*,struct tcf_proto*,unsigned long,int /*<<< orphan*/ ,struct nlattr**,void**,int /*<<< orphan*/ ,int,struct netlink_ext_ack*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct Qdisc*,struct tcf_proto*,int) ; 
 struct tcf_chain* FUNC24 (struct tcf_proto*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC25 (struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC26 (struct tcf_chain*,struct tcf_proto*,int,int /*<<< orphan*/ *) ; 
 struct tcf_proto* FUNC27 (struct tcf_chain*,struct tcf_chain_info*,scalar_t__,scalar_t__,int) ; 
 struct tcf_proto* FUNC28 (struct tcf_chain*,struct tcf_proto*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC29 (struct tcf_chain*,struct tcf_chain_info*) ; 
 scalar_t__ FUNC30 (struct nlattr*,char*) ; 
 struct tcf_proto* FUNC31 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct tcf_chain*,int,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC32 (char*) ; 
 int /*<<< orphan*/  FUNC33 (struct tcf_proto*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (struct net*,struct sk_buff*,struct nlmsghdr*,struct tcf_proto*,struct tcf_proto*,struct Qdisc*,scalar_t__,void*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC35 (struct tcf_proto*,void*) ; 

__attribute__((used)) static int FUNC36(struct sk_buff *skb, struct nlmsghdr *n,
			  struct netlink_ext_ack *extack)
{
	struct net *net = FUNC19(skb->sk);
	struct nlattr *tca[TCA_MAX + 1];
	char name[IFNAMSIZ];
	struct tcmsg *t;
	u32 protocol;
	u32 prio;
	bool prio_allocate;
	u32 parent;
	u32 chain_index;
	struct Qdisc *q = NULL;
	struct tcf_chain_info chain_info;
	struct tcf_chain *chain = NULL;
	struct tcf_block *block;
	struct tcf_proto *tp;
	unsigned long cl;
	void *fh;
	int err;
	int tp_created;
	bool rtnl_held = false;

	if (!FUNC11(skb, net->user_ns, CAP_NET_ADMIN))
		return -EPERM;

replay:
	tp_created = 0;

	err = FUNC16(n, sizeof(*t), tca, TCA_MAX,
				     rtm_tca_policy, extack);
	if (err < 0)
		return err;

	t = FUNC15(n);
	protocol = FUNC5(t->tcm_info);
	prio = FUNC3(t->tcm_info);
	prio_allocate = false;
	parent = t->tcm_parent;
	tp = NULL;
	cl = 0;
	block = NULL;

	if (prio == 0) {
		/* If no priority is provided by the user,
		 * we allocate one.
		 */
		if (n->nlmsg_flags & NLM_F_CREATE) {
			prio = FUNC4(0x80000000U, 0U);
			prio_allocate = true;
		} else {
			FUNC1(extack, "Invalid filter command with priority of zero");
			return -ENOENT;
		}
	}

	/* Find head of filter chain. */

	err = FUNC8(net, &q, &parent, t->tcm_ifindex, false, extack);
	if (err)
		return err;

	if (FUNC30(tca[TCA_KIND], name)) {
		FUNC1(extack, "Specified TC filter name too long");
		err = -EINVAL;
		goto errout;
	}

	/* Take rtnl mutex if rtnl_held was set to true on previous iteration,
	 * block is shared (no qdisc found), qdisc is not unlocked, classifier
	 * type is not specified, classifier is not unlocked.
	 */
	if (rtnl_held ||
	    (q && !(q->ops->cl_ops->flags & QDISC_CLASS_OPS_DOIT_UNLOCKED)) ||
	    !FUNC32(name)) {
		rtnl_held = true;
		FUNC17();
	}

	err = FUNC7(q, parent, &cl, t->tcm_ifindex, extack);
	if (err)
		goto errout;

	block = FUNC6(net, q, cl, t->tcm_ifindex, t->tcm_block_index,
				 extack);
	if (FUNC0(block)) {
		err = FUNC2(block);
		goto errout;
	}

	chain_index = tca[TCA_CHAIN] ? FUNC13(tca[TCA_CHAIN]) : 0;
	if (chain_index > TC_ACT_EXT_VAL_MASK) {
		FUNC1(extack, "Specified chain index exceeds upper limit");
		err = -EINVAL;
		goto errout;
	}
	chain = FUNC24(block, chain_index, true);
	if (!chain) {
		FUNC1(extack, "Cannot create specified filter chain");
		err = -ENOMEM;
		goto errout;
	}

	FUNC9(&chain->filter_chain_lock);
	tp = FUNC27(chain, &chain_info, protocol,
			       prio, prio_allocate);
	if (FUNC0(tp)) {
		FUNC1(extack, "Filter with specified priority/protocol not found");
		err = FUNC2(tp);
		goto errout_locked;
	}

	if (tp == NULL) {
		struct tcf_proto *tp_new = NULL;

		if (chain->flushing) {
			err = -EAGAIN;
			goto errout_locked;
		}

		/* Proto-tcf does not exist, create new one */

		if (tca[TCA_KIND] == NULL || !protocol) {
			FUNC1(extack, "Filter kind and protocol must be specified");
			err = -EINVAL;
			goto errout_locked;
		}

		if (!(n->nlmsg_flags & NLM_F_CREATE)) {
			FUNC1(extack, "Need both RTM_NEWTFILTER and NLM_F_CREATE to create a new filter");
			err = -ENOENT;
			goto errout_locked;
		}

		if (prio_allocate)
			prio = FUNC22(FUNC29(chain,
							       &chain_info));

		FUNC10(&chain->filter_chain_lock);
		tp_new = FUNC31(FUNC12(tca[TCA_KIND]),
					  protocol, prio, chain, rtnl_held,
					  extack);
		if (FUNC0(tp_new)) {
			err = FUNC2(tp_new);
			goto errout_tp;
		}

		tp_created = 1;
		tp = FUNC28(chain, tp_new, protocol, prio,
						rtnl_held);
		if (FUNC0(tp)) {
			err = FUNC2(tp);
			goto errout_tp;
		}
	} else {
		FUNC10(&chain->filter_chain_lock);
	}

	if (tca[TCA_KIND] && FUNC14(tca[TCA_KIND], tp->ops->kind)) {
		FUNC1(extack, "Specified filter kind does not match existing one");
		err = -EINVAL;
		goto errout;
	}

	fh = tp->ops->get(tp, t->tcm_handle);

	if (!fh) {
		if (!(n->nlmsg_flags & NLM_F_CREATE)) {
			FUNC1(extack, "Need both RTM_NEWTFILTER and NLM_F_CREATE to create a new filter");
			err = -ENOENT;
			goto errout;
		}
	} else if (n->nlmsg_flags & NLM_F_EXCL) {
		FUNC35(tp, fh);
		FUNC1(extack, "Filter already exists");
		err = -EEXIST;
		goto errout;
	}

	if (chain->tmplt_ops && chain->tmplt_ops != tp->ops) {
		FUNC1(extack, "Chain template is set to a different filter kind");
		err = -EINVAL;
		goto errout;
	}

	err = tp->ops->change(net, skb, tp, cl, t->tcm_handle, tca, &fh,
			      n->nlmsg_flags & NLM_F_CREATE ? TCA_ACT_NOREPLACE : TCA_ACT_REPLACE,
			      rtnl_held, extack);
	if (err == 0) {
		FUNC34(net, skb, n, tp, block, q, parent, fh,
			       RTM_NEWTFILTER, false, rtnl_held);
		FUNC35(tp, fh);
		/* q pointer is NULL for shared blocks */
		if (q)
			q->flags &= ~TCQ_F_CAN_BYPASS;
	}

errout:
	if (err && tp_created)
		FUNC26(chain, tp, rtnl_held, NULL);
errout_tp:
	if (chain) {
		if (tp && !FUNC0(tp))
			FUNC33(tp, rtnl_held, NULL);
		if (!tp_created)
			FUNC25(chain);
	}
	FUNC23(q, block, rtnl_held);

	if (rtnl_held)
		FUNC18();

	if (err == -EAGAIN) {
		/* Take rtnl lock in case EAGAIN is caused by concurrent flush
		 * of target chain.
		 */
		rtnl_held = true;
		/* Replay the request. */
		goto replay;
	}
	return err;

errout_locked:
	FUNC10(&chain->filter_chain_lock);
	goto errout;
}