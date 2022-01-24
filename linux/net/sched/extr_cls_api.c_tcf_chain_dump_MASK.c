#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct tcmsg {int /*<<< orphan*/  tcm_info; } ;
struct tcf_proto {scalar_t__ prio; scalar_t__ protocol; TYPE_1__* ops; } ;
struct TYPE_6__ {int skip; int count; int cookie; scalar_t__ stop; int /*<<< orphan*/  fn; } ;
struct tcf_dump_args {TYPE_2__ w; int /*<<< orphan*/  parent; struct Qdisc* q; struct tcf_block* block; struct netlink_callback* cb; struct sk_buff* skb; } ;
struct tcf_chain {struct tcf_block* block; } ;
struct tcf_block {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct netlink_callback {int* args; TYPE_3__* nlh; int /*<<< orphan*/  skb; } ;
struct net {int dummy; } ;
struct Qdisc {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  portid; } ;
struct TYPE_7__ {int /*<<< orphan*/  nlmsg_seq; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* walk ) (struct tcf_proto*,TYPE_2__*,int) ;} ;

/* Variables and functions */
 TYPE_4__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  RTM_NEWTFILTER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct tcf_proto* FUNC3 (struct tcf_chain*,struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 struct tcmsg* FUNC5 (TYPE_3__*) ; 
 struct net* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tcf_proto*,TYPE_2__*,int) ; 
 scalar_t__ FUNC8 (struct net*,struct sk_buff*,struct tcf_proto*,struct tcf_block*,struct Qdisc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tcf_node_dump ; 
 int /*<<< orphan*/  FUNC9 (struct tcf_proto*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC10(struct tcf_chain *chain, struct Qdisc *q, u32 parent,
			   struct sk_buff *skb, struct netlink_callback *cb,
			   long index_start, long *p_index)
{
	struct net *net = FUNC6(skb->sk);
	struct tcf_block *block = chain->block;
	struct tcmsg *tcm = FUNC5(cb->nlh);
	struct tcf_proto *tp, *tp_prev;
	struct tcf_dump_args arg;

	for (tp = FUNC3(chain, NULL);
	     tp;
	     tp_prev = tp,
		     tp = FUNC3(chain, tp),
		     FUNC9(tp_prev, true, NULL),
		     (*p_index)++) {
		if (*p_index < index_start)
			continue;
		if (FUNC1(tcm->tcm_info) &&
		    FUNC1(tcm->tcm_info) != tp->prio)
			continue;
		if (FUNC2(tcm->tcm_info) &&
		    FUNC2(tcm->tcm_info) != tp->protocol)
			continue;
		if (*p_index > index_start)
			FUNC4(&cb->args[1], 0,
			       sizeof(cb->args) - sizeof(cb->args[0]));
		if (cb->args[1] == 0) {
			if (FUNC8(net, skb, tp, block, q, parent, NULL,
					  FUNC0(cb->skb).portid,
					  cb->nlh->nlmsg_seq, NLM_F_MULTI,
					  RTM_NEWTFILTER, true) <= 0)
				goto errout;
			cb->args[1] = 1;
		}
		if (!tp->ops->walk)
			continue;
		arg.w.fn = tcf_node_dump;
		arg.skb = skb;
		arg.cb = cb;
		arg.block = block;
		arg.q = q;
		arg.parent = parent;
		arg.w.stop = 0;
		arg.w.skip = cb->args[1] - 1;
		arg.w.count = 0;
		arg.w.cookie = cb->args[2];
		tp->ops->walk(tp, &arg.w, true);
		cb->args[2] = arg.w.cookie;
		cb->args[1] = arg.w.count + 1;
		if (arg.w.stop)
			goto errout;
	}
	return true;

errout:
	FUNC9(tp, true, NULL);
	return false;
}