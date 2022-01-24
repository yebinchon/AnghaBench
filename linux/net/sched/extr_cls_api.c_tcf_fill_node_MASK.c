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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct tcmsg {scalar_t__ tcm_handle; int /*<<< orphan*/  tcm_info; int /*<<< orphan*/  tcm_block_index; int /*<<< orphan*/  tcm_ifindex; int /*<<< orphan*/  tcm_parent; scalar_t__ tcm__pad2; scalar_t__ tcm__pad1; int /*<<< orphan*/  tcm_family; } ;
struct tcf_proto {TYPE_2__* ops; TYPE_1__* chain; int /*<<< orphan*/  protocol; int /*<<< orphan*/  prio; } ;
struct tcf_block {int /*<<< orphan*/  index; } ;
struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; } ;
struct net {int dummy; } ;
struct Qdisc {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ifindex; } ;
struct TYPE_5__ {scalar_t__ (* dump ) (struct net*,struct tcf_proto*,void*,struct sk_buff*,struct tcmsg*,int) ;int /*<<< orphan*/  kind; } ;
struct TYPE_4__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  TCA_CHAIN ; 
 int /*<<< orphan*/  TCA_KIND ; 
 int /*<<< orphan*/  TCM_IFINDEX_MAGIC_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcmsg* FUNC3 (struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned char*) ; 
 TYPE_3__* FUNC6 (struct Qdisc*) ; 
 unsigned char* FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct net*,struct tcf_proto*,void*,struct sk_buff*,struct tcmsg*,int) ; 

__attribute__((used)) static int FUNC9(struct net *net, struct sk_buff *skb,
			 struct tcf_proto *tp, struct tcf_block *block,
			 struct Qdisc *q, u32 parent, void *fh,
			 u32 portid, u32 seq, u16 flags, int event,
			 bool rtnl_held)
{
	struct tcmsg *tcm;
	struct nlmsghdr  *nlh;
	unsigned char *b = FUNC7(skb);

	nlh = FUNC4(skb, portid, seq, event, sizeof(*tcm), flags);
	if (!nlh)
		goto out_nlmsg_trim;
	tcm = FUNC3(nlh);
	tcm->tcm_family = AF_UNSPEC;
	tcm->tcm__pad1 = 0;
	tcm->tcm__pad2 = 0;
	if (q) {
		tcm->tcm_ifindex = FUNC6(q)->ifindex;
		tcm->tcm_parent = parent;
	} else {
		tcm->tcm_ifindex = TCM_IFINDEX_MAGIC_BLOCK;
		tcm->tcm_block_index = block->index;
	}
	tcm->tcm_info = FUNC0(tp->prio, tp->protocol);
	if (FUNC1(skb, TCA_KIND, tp->ops->kind))
		goto nla_put_failure;
	if (FUNC2(skb, TCA_CHAIN, tp->chain->index))
		goto nla_put_failure;
	if (!fh) {
		tcm->tcm_handle = 0;
	} else {
		if (tp->ops->dump &&
		    tp->ops->dump(net, tp, fh, skb, tcm, rtnl_held) < 0)
			goto nla_put_failure;
	}
	nlh->nlmsg_len = FUNC7(skb) - b;
	return skb->len;

out_nlmsg_trim:
nla_put_failure:
	FUNC5(skb, b);
	return -1;
}