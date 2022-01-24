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
struct sk_buff {int dummy; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net *net, struct sock *nlsk,
			    struct sk_buff *skb, const struct nlmsghdr *nlh,
			    const struct nlattr * const nla[],
			    struct netlink_ext_ack *extack)
{
	struct sk_buff *skb2;
	int err;

	skb2 = FUNC1(NLMSG_GOODSIZE, GFP_ATOMIC);
	if (skb2 == NULL)
		return -ENOMEM;

	err = FUNC3(skb2, net, FUNC0(skb).portid,
				      nlh->nlmsg_seq);
	if (err < 0)
		goto err;

	return FUNC4(nlsk, skb2, FUNC0(skb).portid);
err:
	FUNC2(skb2);
	return err;
}