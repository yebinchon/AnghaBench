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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nexthop {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int ENOENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int /*<<< orphan*/  RTM_NEWNEXTHOP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct nexthop* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,struct nexthop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nlmsghdr*,int /*<<< orphan*/ *,struct netlink_ext_ack*) ; 
 int FUNC7 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *in_skb, struct nlmsghdr *nlh,
			   struct netlink_ext_ack *extack)
{
	struct net *net = FUNC8(in_skb->sk);
	struct sk_buff *skb = NULL;
	struct nexthop *nh;
	int err;
	u32 id;

	err = FUNC6(nlh, &id, extack);
	if (err)
		return err;

	err = -ENOBUFS;
	skb = FUNC2(NLMSG_GOODSIZE, GFP_KERNEL);
	if (!skb)
		goto out;

	err = -ENOENT;
	nh = FUNC4(net, id);
	if (!nh)
		goto errout_free;

	err = FUNC5(skb, nh, RTM_NEWNEXTHOP, FUNC0(in_skb).portid,
			   nlh->nlmsg_seq, 0);
	if (err < 0) {
		FUNC1(err == -EMSGSIZE);
		goto errout_free;
	}

	err = FUNC7(skb, net, FUNC0(in_skb).portid);
out:
	return err;
errout_free:
	FUNC3(skb);
	goto out;
}