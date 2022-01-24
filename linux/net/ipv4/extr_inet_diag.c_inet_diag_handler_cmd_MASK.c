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
struct inet_diag_req_v2 {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  INET_DIAG_REQ_BYTECODE ; 
 int NLM_F_DUMP ; 
 scalar_t__ SOCK_DIAG_BY_FAMILY ; 
 int FUNC0 (struct nlattr*,struct sk_buff*) ; 
 int FUNC1 (scalar_t__,struct sk_buff*,struct nlmsghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inet_diag_dump ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,struct nlmsghdr*,struct netlink_dump_control*) ; 
 scalar_t__ FUNC3 (struct nlmsghdr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nlmsghdr*) ; 
 struct nlattr* FUNC5 (struct nlmsghdr*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nlmsghdr*) ; 
 struct net* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct nlmsghdr *h)
{
	int hdrlen = sizeof(struct inet_diag_req_v2);
	struct net *net = FUNC7(skb->sk);

	if (FUNC6(h) < hdrlen)
		return -EINVAL;

	if (h->nlmsg_type == SOCK_DIAG_BY_FAMILY &&
	    h->nlmsg_flags & NLM_F_DUMP) {
		if (FUNC3(h, hdrlen)) {
			struct nlattr *attr;
			int err;

			attr = FUNC5(h, hdrlen,
					       INET_DIAG_REQ_BYTECODE);
			err = FUNC0(attr, skb);
			if (err)
				return err;
		}
		{
			struct netlink_dump_control c = {
				.dump = inet_diag_dump,
			};
			return FUNC2(net->diag_nlsk, skb, h, &c);
		}
	}

	return FUNC1(h->nlmsg_type, skb, h, FUNC4(h));
}