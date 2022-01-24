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
struct packet_diag_req {scalar_t__ sdiag_protocol; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct netlink_dump_control {int /*<<< orphan*/  dump; } ;
struct net {int /*<<< orphan*/  diag_nlsk; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int NLM_F_DUMP ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sk_buff*,struct nlmsghdr*,struct netlink_dump_control*) ; 
 struct packet_diag_req* FUNC1 (struct nlmsghdr*) ; 
 int FUNC2 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  packet_diag_dump ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct nlmsghdr *h)
{
	int hdrlen = sizeof(struct packet_diag_req);
	struct net *net = FUNC3(skb->sk);
	struct packet_diag_req *req;

	if (FUNC2(h) < hdrlen)
		return -EINVAL;

	req = FUNC1(h);
	/* Make it possible to support protocol filtering later */
	if (req->sdiag_protocol)
		return -EINVAL;

	if (h->nlmsg_flags & NLM_F_DUMP) {
		struct netlink_dump_control c = {
			.dump = packet_diag_dump,
		};
		return FUNC0(net->diag_nlsk, skb, h, &c);
	} else
		return -EOPNOTSUPP;
}