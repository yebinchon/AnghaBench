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
struct unix_diag_req {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct netlink_dump_control {int /*<<< orphan*/  dump; } ;
struct net {int /*<<< orphan*/  diag_nlsk; } ;

/* Variables and functions */
 int EINVAL ; 
 int NLM_F_DUMP ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sk_buff*,struct nlmsghdr*,struct netlink_dump_control*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlmsghdr*) ; 
 int FUNC2 (struct nlmsghdr*) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  unix_diag_dump ; 
 int FUNC4 (struct sk_buff*,struct nlmsghdr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct nlmsghdr *h)
{
	int hdrlen = sizeof(struct unix_diag_req);
	struct net *net = FUNC3(skb->sk);

	if (FUNC2(h) < hdrlen)
		return -EINVAL;

	if (h->nlmsg_flags & NLM_F_DUMP) {
		struct netlink_dump_control c = {
			.dump = unix_diag_dump,
		};
		return FUNC0(net->diag_nlsk, skb, h, &c);
	} else
		return FUNC4(skb, h, FUNC1(h));
}