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
typedef  scalar_t__ u32 ;
struct tcmsg {scalar_t__ tcm_ifindex; scalar_t__ tcm_parent; int /*<<< orphan*/  tcm_block_index; } ;
struct tcf_chain {scalar_t__ index; } ;
struct tcf_block {int dummy; } ;
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {long* args; int /*<<< orphan*/  extack; int /*<<< orphan*/  nlh; } ;
struct net_device {struct Qdisc* qdisc; } ;
struct net {int dummy; } ;
struct Qdisc_class_ops {unsigned long (* find ) (struct Qdisc*,scalar_t__) ;struct tcf_block* (* tcf_block ) (struct Qdisc*,unsigned long,int /*<<< orphan*/ *) ;} ;
struct Qdisc {TYPE_1__* ops; scalar_t__ handle; } ;
struct TYPE_2__ {struct Qdisc_class_ops* cl_ops; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 size_t TCA_CHAIN ; 
 int /*<<< orphan*/  TCA_MAX ; 
 scalar_t__ TCM_IFINDEX_MAGIC_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 struct net_device* FUNC2 (struct net*,scalar_t__) ; 
 struct tcf_chain* FUNC3 (struct tcf_block*,struct tcf_chain*) ; 
 scalar_t__ FUNC4 (struct nlattr*) ; 
 struct tcmsg* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct Qdisc* FUNC8 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct net* FUNC9 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC10 (struct Qdisc*,scalar_t__) ; 
 struct tcf_block* FUNC11 (struct Qdisc*,unsigned long,int /*<<< orphan*/ *) ; 
 struct tcf_block* FUNC12 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct tcf_block*,int) ; 
 scalar_t__ FUNC14 (struct tcf_block*) ; 
 int /*<<< orphan*/  FUNC15 (struct tcf_chain*,struct Qdisc*,scalar_t__,struct sk_buff*,struct netlink_callback*,long,long*) ; 
 int /*<<< orphan*/  FUNC16 (struct tcf_chain*) ; 

__attribute__((used)) static int FUNC17(struct sk_buff *skb, struct netlink_callback *cb)
{
	struct tcf_chain *chain, *chain_prev;
	struct net *net = FUNC9(skb->sk);
	struct nlattr *tca[TCA_MAX + 1];
	struct Qdisc *q = NULL;
	struct tcf_block *block;
	struct tcmsg *tcm = FUNC5(cb->nlh);
	long index_start;
	long index;
	u32 parent;
	int err;

	if (FUNC6(cb->nlh) < sizeof(*tcm))
		return skb->len;

	err = FUNC7(cb->nlh, sizeof(*tcm), tca, TCA_MAX,
				     NULL, cb->extack);
	if (err)
		return err;

	if (tcm->tcm_ifindex == TCM_IFINDEX_MAGIC_BLOCK) {
		block = FUNC12(net, tcm->tcm_block_index);
		if (!block)
			goto out;
		/* If we work with block index, q is NULL and parent value
		 * will never be used in the following code. The check
		 * in tcf_fill_node prevents it. However, compiler does not
		 * see that far, so set parent to zero to silence the warning
		 * about parent being uninitialized.
		 */
		parent = 0;
	} else {
		const struct Qdisc_class_ops *cops;
		struct net_device *dev;
		unsigned long cl = 0;

		dev = FUNC2(net, tcm->tcm_ifindex);
		if (!dev)
			return skb->len;

		parent = tcm->tcm_parent;
		if (!parent) {
			q = dev->qdisc;
			parent = q->handle;
		} else {
			q = FUNC8(dev, FUNC0(tcm->tcm_parent));
		}
		if (!q)
			goto out;
		cops = q->ops->cl_ops;
		if (!cops)
			goto out;
		if (!cops->tcf_block)
			goto out;
		if (FUNC1(tcm->tcm_parent)) {
			cl = cops->find(q, tcm->tcm_parent);
			if (cl == 0)
				goto out;
		}
		block = cops->tcf_block(q, cl, NULL);
		if (!block)
			goto out;
		if (FUNC14(block))
			q = NULL;
	}

	index_start = cb->args[0];
	index = 0;

	for (chain = FUNC3(block, NULL);
	     chain;
	     chain_prev = chain,
		     chain = FUNC3(block, chain),
		     FUNC16(chain_prev)) {
		if (tca[TCA_CHAIN] &&
		    FUNC4(tca[TCA_CHAIN]) != chain->index)
			continue;
		if (!FUNC15(chain, q, parent, skb, cb,
				    index_start, &index)) {
			FUNC16(chain);
			err = -EMSGSIZE;
			break;
		}
	}

	if (tcm->tcm_ifindex == TCM_IFINDEX_MAGIC_BLOCK)
		FUNC13(block, true);
	cb->args[0] = index;

out:
	/* If we did no progress, the error (EMSGSIZE) is real */
	if (skb->len == 0 && err)
		return err;
	return skb->len;
}