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
struct sk_buff {int dummy; } ;
struct rtgenmsg {int /*<<< orphan*/  rtgen_family; } ;
struct nlmsghdr {int dummy; } ;
struct net_fill_args {int /*<<< orphan*/  ref_nsid; scalar_t__ add_ref; int /*<<< orphan*/  nsid; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd; int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  NETNSA_CURRENT_NSID ; 
 int /*<<< orphan*/  NETNSA_NSID ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlmsghdr*) ; 
 struct rtgenmsg* FUNC2 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct net_fill_args *args)
{
	struct nlmsghdr *nlh;
	struct rtgenmsg *rth;

	nlh = FUNC4(skb, args->portid, args->seq, args->cmd, sizeof(*rth),
			args->flags);
	if (!nlh)
		return -EMSGSIZE;

	rth = FUNC2(nlh);
	rth->rtgen_family = AF_UNSPEC;

	if (FUNC0(skb, NETNSA_NSID, args->nsid))
		goto nla_put_failure;

	if (args->add_ref &&
	    FUNC0(skb, NETNSA_CURRENT_NSID, args->ref_nsid))
		goto nla_put_failure;

	FUNC3(skb, nlh);
	return 0;

nla_put_failure:
	FUNC1(skb, nlh);
	return -EMSGSIZE;
}