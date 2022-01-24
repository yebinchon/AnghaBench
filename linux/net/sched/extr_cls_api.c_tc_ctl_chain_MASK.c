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
typedef  int /*<<< orphan*/  u32 ;
struct tcmsg {int /*<<< orphan*/  tcm_block_index; int /*<<< orphan*/  tcm_ifindex; int /*<<< orphan*/  tcm_parent; } ;
struct tcf_chain {int explicitly_created; } ;
struct tcf_block {int /*<<< orphan*/  lock; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int nlmsg_type; int nlmsg_flags; int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int /*<<< orphan*/  user_ns; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EAGAIN ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct tcf_block*) ; 
 int NLM_F_CREATE ; 
 int NLM_F_EXCL ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int FUNC2 (struct tcf_block*) ; 
#define  RTM_DELCHAIN 130 
 int /*<<< orphan*/  RTM_DELTFILTER ; 
#define  RTM_GETCHAIN 129 
#define  RTM_NEWCHAIN 128 
 size_t TCA_CHAIN ; 
 int /*<<< orphan*/  TCA_MAX ; 
 int /*<<< orphan*/  TC_ACT_EXT_VAL_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 
 struct tcmsg* FUNC7 (struct nlmsghdr*) ; 
 int FUNC8 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  rtm_tca_policy ; 
 struct net* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct tcf_chain*,struct sk_buff*,int,int,int const,int) ; 
 int FUNC11 (struct tcf_chain*,struct net*,struct nlattr**,struct netlink_ext_ack*) ; 
 struct tcf_block* FUNC12 (struct net*,struct Qdisc**,int /*<<< orphan*/ *,unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC13 (struct Qdisc*,struct tcf_block*,int) ; 
 struct tcf_chain* FUNC14 (struct tcf_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct tcf_chain*,int) ; 
 scalar_t__ FUNC16 (struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC17 (struct tcf_chain*) ; 
 struct tcf_chain* FUNC18 (struct tcf_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC20 (struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC21 (struct net*,struct sk_buff*,struct tcf_block*,struct Qdisc*,int /*<<< orphan*/ ,struct nlmsghdr*,struct tcf_chain*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC22(struct sk_buff *skb, struct nlmsghdr *n,
			struct netlink_ext_ack *extack)
{
	struct net *net = FUNC9(skb->sk);
	struct nlattr *tca[TCA_MAX + 1];
	struct tcmsg *t;
	u32 parent;
	u32 chain_index;
	struct Qdisc *q = NULL;
	struct tcf_chain *chain = NULL;
	struct tcf_block *block;
	unsigned long cl;
	int err;

	if (n->nlmsg_type != RTM_GETCHAIN &&
	    !FUNC5(skb, net->user_ns, CAP_NET_ADMIN))
		return -EPERM;

replay:
	err = FUNC8(n, sizeof(*t), tca, TCA_MAX,
				     rtm_tca_policy, extack);
	if (err < 0)
		return err;

	t = FUNC7(n);
	parent = t->tcm_parent;
	cl = 0;

	block = FUNC12(net, &q, &parent, &cl,
			       t->tcm_ifindex, t->tcm_block_index, extack);
	if (FUNC0(block))
		return FUNC2(block);

	chain_index = tca[TCA_CHAIN] ? FUNC6(tca[TCA_CHAIN]) : 0;
	if (chain_index > TC_ACT_EXT_VAL_MASK) {
		FUNC1(extack, "Specified chain index exceeds upper limit");
		err = -EINVAL;
		goto errout_block;
	}

	FUNC3(&block->lock);
	chain = FUNC18(block, chain_index);
	if (n->nlmsg_type == RTM_NEWCHAIN) {
		if (chain) {
			if (FUNC16(chain)) {
				/* The chain exists only because there is
				 * some action referencing it.
				 */
				FUNC17(chain);
			} else {
				FUNC1(extack, "Filter chain already exists");
				err = -EEXIST;
				goto errout_block_locked;
			}
		} else {
			if (!(n->nlmsg_flags & NLM_F_CREATE)) {
				FUNC1(extack, "Need both RTM_NEWCHAIN and NLM_F_CREATE to create a new chain");
				err = -ENOENT;
				goto errout_block_locked;
			}
			chain = FUNC14(block, chain_index);
			if (!chain) {
				FUNC1(extack, "Failed to create filter chain");
				err = -ENOMEM;
				goto errout_block_locked;
			}
		}
	} else {
		if (!chain || FUNC16(chain)) {
			FUNC1(extack, "Cannot find specified filter chain");
			err = -EINVAL;
			goto errout_block_locked;
		}
		FUNC17(chain);
	}

	if (n->nlmsg_type == RTM_NEWCHAIN) {
		/* Modifying chain requires holding parent block lock. In case
		 * the chain was successfully added, take a reference to the
		 * chain. This ensures that an empty chain does not disappear at
		 * the end of this function.
		 */
		FUNC17(chain);
		chain->explicitly_created = true;
	}
	FUNC4(&block->lock);

	switch (n->nlmsg_type) {
	case RTM_NEWCHAIN:
		err = FUNC11(chain, net, tca, extack);
		if (err) {
			FUNC20(chain);
			goto errout;
		}

		FUNC10(chain, NULL, 0, NLM_F_CREATE | NLM_F_EXCL,
				RTM_NEWCHAIN, false);
		break;
	case RTM_DELCHAIN:
		FUNC21(net, skb, block, q, parent, n,
				     chain, RTM_DELTFILTER, true);
		/* Flush the chain first as the user requested chain removal. */
		FUNC15(chain, true);
		/* In case the chain was successfully deleted, put a reference
		 * to the chain previously taken during addition.
		 */
		FUNC20(chain);
		break;
	case RTM_GETCHAIN:
		err = FUNC10(chain, skb, n->nlmsg_seq,
				      n->nlmsg_seq, n->nlmsg_type, true);
		if (err < 0)
			FUNC1(extack, "Failed to send chain notify message");
		break;
	default:
		err = -EOPNOTSUPP;
		FUNC1(extack, "Unsupported message type");
		goto errout;
	}

errout:
	FUNC19(chain);
errout_block:
	FUNC13(q, block, true);
	if (err == -EAGAIN)
		/* Replay the request. */
		goto replay;
	return err;

errout_block_locked:
	FUNC4(&block->lock);
	goto errout_block;
}