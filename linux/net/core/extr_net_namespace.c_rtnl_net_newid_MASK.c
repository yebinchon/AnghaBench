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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct rtgenmsg {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int /*<<< orphan*/  nsid_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct net*) ; 
 TYPE_1__ FUNC1 (struct sk_buff*) ; 
 size_t NETNSA_FD ; 
 int /*<<< orphan*/  NETNSA_MAX ; 
 size_t NETNSA_NSID ; 
 size_t NETNSA_PID ; 
 int /*<<< orphan*/  FUNC2 (struct netlink_ext_ack*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct netlink_ext_ack*,char*) ; 
 int FUNC4 (struct net*) ; 
 int /*<<< orphan*/  RTM_NEWNSID ; 
 scalar_t__ FUNC5 (struct net*,struct net*) ; 
 int FUNC6 (struct net*,struct net*,int) ; 
 struct net* FUNC7 (int /*<<< orphan*/ ) ; 
 struct net* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC10 (struct nlattr*) ; 
 int FUNC11 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC12 (struct net*) ; 
 int /*<<< orphan*/  FUNC13 (struct net*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct nlmsghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtnl_net_policy ; 
 struct net* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct sk_buff *skb, struct nlmsghdr *nlh,
			  struct netlink_ext_ack *extack)
{
	struct net *net = FUNC14(skb->sk);
	struct nlattr *tb[NETNSA_MAX + 1];
	struct nlattr *nla;
	struct net *peer;
	int nsid, err;

	err = FUNC11(nlh, sizeof(struct rtgenmsg), tb,
				     NETNSA_MAX, rtnl_net_policy, extack);
	if (err < 0)
		return err;
	if (!tb[NETNSA_NSID]) {
		FUNC3(extack, "nsid is missing");
		return -EINVAL;
	}
	nsid = FUNC9(tb[NETNSA_NSID]);

	if (tb[NETNSA_PID]) {
		peer = FUNC8(FUNC10(tb[NETNSA_PID]));
		nla = tb[NETNSA_PID];
	} else if (tb[NETNSA_FD]) {
		peer = FUNC7(FUNC10(tb[NETNSA_FD]));
		nla = tb[NETNSA_FD];
	} else {
		FUNC3(extack, "Peer netns reference is missing");
		return -EINVAL;
	}
	if (FUNC0(peer)) {
		FUNC2(extack, nla);
		FUNC3(extack, "Peer netns reference is invalid");
		return FUNC4(peer);
	}

	FUNC15(&net->nsid_lock);
	if (FUNC5(net, peer) >= 0) {
		FUNC16(&net->nsid_lock);
		err = -EEXIST;
		FUNC2(extack, nla);
		FUNC3(extack,
			       "Peer netns already has a nsid assigned");
		goto out;
	}

	err = FUNC6(net, peer, nsid);
	FUNC16(&net->nsid_lock);
	if (err >= 0) {
		FUNC13(net, RTM_NEWNSID, err, FUNC1(skb).portid,
				  nlh, GFP_KERNEL);
		err = 0;
	} else if (err == -ENOSPC && nsid >= 0) {
		err = -EEXIST;
		FUNC2(extack, tb[NETNSA_NSID]);
		FUNC3(extack, "The specified nsid is already used");
	}
out:
	FUNC12(peer);
	return err;
}