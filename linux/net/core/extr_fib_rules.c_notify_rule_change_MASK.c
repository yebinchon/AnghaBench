#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct net {int dummy; } ;
struct fib_rules_ops {int /*<<< orphan*/  nlgroup; struct net* fro_net; } ;
struct fib_rule {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct sk_buff*,struct fib_rule*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct fib_rules_ops*) ; 
 int /*<<< orphan*/  FUNC2 (struct fib_rules_ops*,struct fib_rule*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlmsghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(int event, struct fib_rule *rule,
			       struct fib_rules_ops *ops, struct nlmsghdr *nlh,
			       u32 pid)
{
	struct net *net;
	struct sk_buff *skb;
	int err = -ENOBUFS;

	net = ops->fro_net;
	skb = FUNC4(FUNC2(ops, rule), GFP_KERNEL);
	if (skb == NULL)
		goto errout;

	err = FUNC1(skb, rule, pid, nlh->nlmsg_seq, event, 0, ops);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in fib_rule_nlmsg_size() */
		FUNC0(err == -EMSGSIZE);
		FUNC3(skb);
		goto errout;
	}

	FUNC5(skb, net, pid, ops->nlgroup, nlh, GFP_KERNEL);
	return;
errout:
	if (err < 0)
		FUNC6(net, ops->nlgroup, err);
}