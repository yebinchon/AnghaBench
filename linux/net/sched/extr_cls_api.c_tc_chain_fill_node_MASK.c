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
typedef  int /*<<< orphan*/  u16 ;
struct tcmsg {int /*<<< orphan*/  tcm_block_index; int /*<<< orphan*/  tcm_ifindex; int /*<<< orphan*/  tcm_parent; scalar_t__ tcm_handle; scalar_t__ tcm__pad2; scalar_t__ tcm__pad1; int /*<<< orphan*/  tcm_family; } ;
struct tcf_proto_ops {scalar_t__ (* tmplt_dump ) (struct sk_buff*,struct net*,void*) ;int /*<<< orphan*/  kind; } ;
struct tcf_block {int /*<<< orphan*/  index; TYPE_2__* q; } ;
struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  handle; } ;
struct TYPE_3__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  TCA_CHAIN ; 
 int /*<<< orphan*/  TCA_KIND ; 
 int /*<<< orphan*/  TCM_IFINDEX_MAGIC_BLOCK ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcmsg* FUNC2 (struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned char*) ; 
 TYPE_1__* FUNC5 (TYPE_2__*) ; 
 unsigned char* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*,struct net*,void*) ; 

__attribute__((used)) static int FUNC8(const struct tcf_proto_ops *tmplt_ops,
			      void *tmplt_priv, u32 chain_index,
			      struct net *net, struct sk_buff *skb,
			      struct tcf_block *block,
			      u32 portid, u32 seq, u16 flags, int event)
{
	unsigned char *b = FUNC6(skb);
	const struct tcf_proto_ops *ops;
	struct nlmsghdr *nlh;
	struct tcmsg *tcm;
	void *priv;

	ops = tmplt_ops;
	priv = tmplt_priv;

	nlh = FUNC3(skb, portid, seq, event, sizeof(*tcm), flags);
	if (!nlh)
		goto out_nlmsg_trim;
	tcm = FUNC2(nlh);
	tcm->tcm_family = AF_UNSPEC;
	tcm->tcm__pad1 = 0;
	tcm->tcm__pad2 = 0;
	tcm->tcm_handle = 0;
	if (block->q) {
		tcm->tcm_ifindex = FUNC5(block->q)->ifindex;
		tcm->tcm_parent = block->q->handle;
	} else {
		tcm->tcm_ifindex = TCM_IFINDEX_MAGIC_BLOCK;
		tcm->tcm_block_index = block->index;
	}

	if (FUNC1(skb, TCA_CHAIN, chain_index))
		goto nla_put_failure;

	if (ops) {
		if (FUNC0(skb, TCA_KIND, ops->kind))
			goto nla_put_failure;
		if (ops->tmplt_dump(skb, net, priv) < 0)
			goto nla_put_failure;
	}

	nlh->nlmsg_len = FUNC6(skb) - b;
	return skb->len;

out_nlmsg_trim:
nla_put_failure:
	FUNC4(skb, b);
	return -EMSGSIZE;
}