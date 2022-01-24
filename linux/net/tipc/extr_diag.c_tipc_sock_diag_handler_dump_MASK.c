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
struct tipc_sock_diag_req {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct netlink_dump_control {int /*<<< orphan*/  done; int /*<<< orphan*/  dump; int /*<<< orphan*/  start; } ;
struct net {int /*<<< orphan*/  diag_nlsk; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int NLM_F_DUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sk_buff*,struct nlmsghdr*,struct netlink_dump_control*) ; 
 int FUNC1 (struct nlmsghdr*) ; 
 struct net* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_diag_dump ; 
 int /*<<< orphan*/  tipc_dump_done ; 
 int /*<<< orphan*/  tipc_dump_start ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb,
				       struct nlmsghdr *h)
{
	int hdrlen = sizeof(struct tipc_sock_diag_req);
	struct net *net = FUNC2(skb->sk);

	if (FUNC1(h) < hdrlen)
		return -EINVAL;

	if (h->nlmsg_flags & NLM_F_DUMP) {
		struct netlink_dump_control c = {
			.start = tipc_dump_start,
			.dump = tipc_diag_dump,
			.done = tipc_dump_done,
		};
		FUNC0(net->diag_nlsk, skb, h, &c);
		return 0;
	}
	return -EOPNOTSUPP;
}