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
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_fill_args {int add_ref; void* nsid; void* ref_nsid; int /*<<< orphan*/  cmd; int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int ENOMEM ; 
 struct net* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct net*) ; 
 TYPE_1__ FUNC2 (struct sk_buff*) ; 
 size_t NETNSA_FD ; 
 int /*<<< orphan*/  NETNSA_MAX ; 
 size_t NETNSA_NSID ; 
 size_t NETNSA_PID ; 
 size_t NETNSA_TARGET_NSID ; 
 int /*<<< orphan*/  FUNC3 (struct netlink_ext_ack*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct netlink_ext_ack*,char*) ; 
 int FUNC5 (struct net*) ; 
 int /*<<< orphan*/  RTM_NEWNSID ; 
 struct net* FUNC6 (int /*<<< orphan*/ ) ; 
 struct net* FUNC7 (struct net*,int) ; 
 struct net* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC10 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 struct sk_buff* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC13 (struct net*,struct net*) ; 
 int /*<<< orphan*/  FUNC14 (struct net*) ; 
 struct net* FUNC15 (int /*<<< orphan*/ ,int) ; 
 int FUNC16 (struct sk_buff*,struct net_fill_args*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int FUNC18 (struct sk_buff*,struct nlmsghdr*,struct nlattr**,struct netlink_ext_ack*) ; 
 int FUNC19 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct sk_buff *skb, struct nlmsghdr *nlh,
			  struct netlink_ext_ack *extack)
{
	struct net *net = FUNC20(skb->sk);
	struct nlattr *tb[NETNSA_MAX + 1];
	struct net_fill_args fillargs = {
		.portid = FUNC2(skb).portid,
		.seq = nlh->nlmsg_seq,
		.cmd = RTM_NEWNSID,
	};
	struct net *peer, *target = net;
	struct nlattr *nla;
	struct sk_buff *msg;
	int err;

	err = FUNC18(skb, nlh, tb, extack);
	if (err < 0)
		return err;
	if (tb[NETNSA_PID]) {
		peer = FUNC8(FUNC10(tb[NETNSA_PID]));
		nla = tb[NETNSA_PID];
	} else if (tb[NETNSA_FD]) {
		peer = FUNC6(FUNC10(tb[NETNSA_FD]));
		nla = tb[NETNSA_FD];
	} else if (tb[NETNSA_NSID]) {
		peer = FUNC7(net, FUNC9(tb[NETNSA_NSID]));
		if (!peer)
			peer = FUNC0(-ENOENT);
		nla = tb[NETNSA_NSID];
	} else {
		FUNC4(extack, "Peer netns reference is missing");
		return -EINVAL;
	}

	if (FUNC1(peer)) {
		FUNC3(extack, nla);
		FUNC4(extack, "Peer netns reference is invalid");
		return FUNC5(peer);
	}

	if (tb[NETNSA_TARGET_NSID]) {
		int id = FUNC9(tb[NETNSA_TARGET_NSID]);

		target = FUNC15(FUNC2(skb).sk, id);
		if (FUNC1(target)) {
			FUNC3(extack, tb[NETNSA_TARGET_NSID]);
			FUNC4(extack,
				       "Target netns reference is invalid");
			err = FUNC5(target);
			goto out;
		}
		fillargs.add_ref = true;
		fillargs.ref_nsid = FUNC13(net, peer);
	}

	msg = FUNC12(FUNC17(), GFP_KERNEL);
	if (!msg) {
		err = -ENOMEM;
		goto out;
	}

	fillargs.nsid = FUNC13(target, peer);
	err = FUNC16(msg, &fillargs);
	if (err < 0)
		goto err_out;

	err = FUNC19(msg, net, FUNC2(skb).portid);
	goto out;

err_out:
	FUNC11(msg);
out:
	if (fillargs.add_ref)
		FUNC14(target);
	FUNC14(peer);
	return err;
}