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
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_type; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net *net, struct sock *ctnl,
			     struct sk_buff *skb, const struct nlmsghdr *nlh,
			     const struct nlattr * const cda[],
			     struct netlink_ext_ack *extack)
{
	struct sk_buff *skb2;
	int err;

	skb2 = FUNC5(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (skb2 == NULL)
		return -ENOMEM;

	err = FUNC2(skb2, FUNC0(skb).portid,
					  nlh->nlmsg_seq,
					  FUNC1(nlh->nlmsg_type),
					  FUNC6(skb->sk));
	if (err <= 0)
		goto free;

	err = FUNC4(ctnl, skb2, FUNC0(skb).portid, MSG_DONTWAIT);
	if (err < 0)
		goto out;

	return 0;

free:
	FUNC3(skb2);
out:
	/* this avoids a loop in nfnetlink. */
	return err == -EAGAIN ? -ENOBUFS : err;
}