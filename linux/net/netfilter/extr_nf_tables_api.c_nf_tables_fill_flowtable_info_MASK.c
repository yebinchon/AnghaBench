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
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nft_flowtable {int ops_len; TYPE_3__* ops; int /*<<< orphan*/  priority; int /*<<< orphan*/  hooknum; int /*<<< orphan*/  handle; int /*<<< orphan*/  use; int /*<<< orphan*/  name; TYPE_2__* table; } ;
struct nfgenmsg {int nfgen_family; int /*<<< orphan*/  res_id; int /*<<< orphan*/  version; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int base_seq; } ;
struct net {TYPE_1__ nft; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFNETLINK_V0 ; 
 int /*<<< orphan*/  NFNL_SUBSYS_NFTABLES ; 
 int /*<<< orphan*/  NFTA_DEVICE_NAME ; 
 int /*<<< orphan*/  NFTA_FLOWTABLE_HANDLE ; 
 int /*<<< orphan*/  NFTA_FLOWTABLE_HOOK ; 
 int /*<<< orphan*/  NFTA_FLOWTABLE_HOOK_DEVS ; 
 int /*<<< orphan*/  NFTA_FLOWTABLE_HOOK_NUM ; 
 int /*<<< orphan*/  NFTA_FLOWTABLE_HOOK_PRIORITY ; 
 int /*<<< orphan*/  NFTA_FLOWTABLE_NAME ; 
 int /*<<< orphan*/  NFTA_FLOWTABLE_PAD ; 
 int /*<<< orphan*/  NFTA_FLOWTABLE_TABLE ; 
 int /*<<< orphan*/  NFTA_FLOWTABLE_USE ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfgenmsg* FUNC10 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,struct nlmsghdr*) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *skb, struct net *net,
					 u32 portid, u32 seq, int event,
					 u32 flags, int family,
					 struct nft_flowtable *flowtable)
{
	struct nlattr *nest, *nest_devs;
	struct nfgenmsg *nfmsg;
	struct nlmsghdr *nlh;
	int i;

	event = FUNC4(NFNL_SUBSYS_NFTABLES, event);
	nlh = FUNC12(skb, portid, seq, event, sizeof(struct nfgenmsg), flags);
	if (nlh == NULL)
		goto nla_put_failure;

	nfmsg = FUNC10(nlh);
	nfmsg->nfgen_family	= family;
	nfmsg->version		= NFNETLINK_V0;
	nfmsg->res_id		= FUNC3(net->nft.base_seq & 0xffff);

	if (FUNC9(skb, NFTA_FLOWTABLE_TABLE, flowtable->table->name) ||
	    FUNC9(skb, NFTA_FLOWTABLE_NAME, flowtable->name) ||
	    FUNC7(skb, NFTA_FLOWTABLE_USE, FUNC2(flowtable->use)) ||
	    FUNC8(skb, NFTA_FLOWTABLE_HANDLE, FUNC1(flowtable->handle),
			 NFTA_FLOWTABLE_PAD))
		goto nla_put_failure;

	nest = FUNC6(skb, NFTA_FLOWTABLE_HOOK);
	if (!nest)
		goto nla_put_failure;
	if (FUNC7(skb, NFTA_FLOWTABLE_HOOK_NUM, FUNC2(flowtable->hooknum)) ||
	    FUNC7(skb, NFTA_FLOWTABLE_HOOK_PRIORITY, FUNC2(flowtable->priority)))
		goto nla_put_failure;

	nest_devs = FUNC6(skb, NFTA_FLOWTABLE_HOOK_DEVS);
	if (!nest_devs)
		goto nla_put_failure;

	for (i = 0; i < flowtable->ops_len; i++) {
		const struct net_device *dev = FUNC0(flowtable->ops[i].dev);

		if (dev &&
		    FUNC9(skb, NFTA_DEVICE_NAME, dev->name))
			goto nla_put_failure;
	}
	FUNC5(skb, nest_devs);
	FUNC5(skb, nest);

	FUNC11(skb, nlh);
	return 0;

nla_put_failure:
	FUNC13(skb, nlh);
	return -1;
}