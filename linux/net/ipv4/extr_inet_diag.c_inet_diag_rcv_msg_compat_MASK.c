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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct netlink_dump_control {int /*<<< orphan*/  dump; } ;
struct net {int /*<<< orphan*/  diag_nlsk; } ;
struct inet_diag_req {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ INET_DIAG_GETSOCK_MAX ; 
 int /*<<< orphan*/  INET_DIAG_REQ_BYTECODE ; 
 int NLM_F_DUMP ; 
 int FUNC0 (struct nlattr*,struct sk_buff*) ; 
 int /*<<< orphan*/  inet_diag_dump_compat ; 
 int FUNC1 (struct sk_buff*,struct nlmsghdr*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,struct nlmsghdr*,struct netlink_dump_control*) ; 
 scalar_t__ FUNC3 (struct nlmsghdr*,int) ; 
 struct nlattr* FUNC4 (struct nlmsghdr*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nlmsghdr*) ; 
 struct net* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct nlmsghdr *nlh)
{
	int hdrlen = sizeof(struct inet_diag_req);
	struct net *net = FUNC6(skb->sk);

	if (nlh->nlmsg_type >= INET_DIAG_GETSOCK_MAX ||
	    FUNC5(nlh) < hdrlen)
		return -EINVAL;

	if (nlh->nlmsg_flags & NLM_F_DUMP) {
		if (FUNC3(nlh, hdrlen)) {
			struct nlattr *attr;
			int err;

			attr = FUNC4(nlh, hdrlen,
					       INET_DIAG_REQ_BYTECODE);
			err = FUNC0(attr, skb);
			if (err)
				return err;
		}
		{
			struct netlink_dump_control c = {
				.dump = inet_diag_dump_compat,
			};
			return FUNC2(net->diag_nlsk, skb, nlh, &c);
		}
	}

	return FUNC1(skb, nlh);
}