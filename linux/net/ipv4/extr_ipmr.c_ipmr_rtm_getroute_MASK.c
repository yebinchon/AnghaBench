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
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct mr_table {int /*<<< orphan*/  maxvif; } ;
struct mfc_cache {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 size_t RTA_DST ; 
 int /*<<< orphan*/  RTA_MAX ; 
 size_t RTA_SRC ; 
 size_t RTA_TABLE ; 
 int /*<<< orphan*/  RTM_NEWROUTE ; 
 int RT_TABLE_DEFAULT ; 
 struct mfc_cache* FUNC1 (struct mr_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mr_table*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mfc_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mr_table* FUNC3 (struct net*,int) ; 
 int FUNC4 (struct sk_buff*,struct nlmsghdr*,struct nlattr**,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr*) ; 
 int FUNC8 (struct nlattr*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *in_skb, struct nlmsghdr *nlh,
			     struct netlink_ext_ack *extack)
{
	struct net *net = FUNC13(in_skb->sk);
	struct nlattr *tb[RTA_MAX + 1];
	struct sk_buff *skb = NULL;
	struct mfc_cache *cache;
	struct mr_table *mrt;
	__be32 src, grp;
	u32 tableid;
	int err;

	err = FUNC4(in_skb, nlh, tb, extack);
	if (err < 0)
		goto errout;

	src = tb[RTA_SRC] ? FUNC7(tb[RTA_SRC]) : 0;
	grp = tb[RTA_DST] ? FUNC7(tb[RTA_DST]) : 0;
	tableid = tb[RTA_TABLE] ? FUNC8(tb[RTA_TABLE]) : 0;

	mrt = FUNC3(net, tableid ? tableid : RT_TABLE_DEFAULT);
	if (!mrt) {
		err = -ENOENT;
		goto errout_free;
	}

	/* entries are added/deleted only under RTNL */
	FUNC10();
	cache = FUNC1(mrt, src, grp);
	FUNC11();
	if (!cache) {
		err = -ENOENT;
		goto errout_free;
	}

	skb = FUNC9(FUNC6(false, mrt->maxvif), GFP_KERNEL);
	if (!skb) {
		err = -ENOBUFS;
		goto errout_free;
	}

	err = FUNC2(mrt, skb, FUNC0(in_skb).portid,
			       nlh->nlmsg_seq, cache,
			       RTM_NEWROUTE, 0);
	if (err < 0)
		goto errout_free;

	err = FUNC12(skb, net, FUNC0(in_skb).portid);

errout:
	return err;

errout_free:
	FUNC5(skb);
	goto errout;
}