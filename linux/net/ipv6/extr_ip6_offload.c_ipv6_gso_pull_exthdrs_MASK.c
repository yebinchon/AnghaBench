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
struct sk_buff {scalar_t__ data; } ;
struct net_offload {int flags; } ;
struct ipv6_opt_hdr {int nexthdr; } ;

/* Variables and functions */
 int INET6_PROTO_GSO_EXTHDR ; 
 int NEXTHDR_HOP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/ * inet6_offloads ; 
 int FUNC1 (struct ipv6_opt_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 struct net_offload* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, int proto)
{
	const struct net_offload *ops = NULL;

	for (;;) {
		struct ipv6_opt_hdr *opth;
		int len;

		if (proto != NEXTHDR_HOP) {
			ops = FUNC3(inet6_offloads[proto]);

			if (FUNC4(!ops))
				break;

			if (!(ops->flags & INET6_PROTO_GSO_EXTHDR))
				break;
		}

		if (FUNC4(!FUNC2(skb, 8)))
			break;

		opth = (void *)skb->data;
		len = FUNC1(opth);

		if (FUNC4(!FUNC2(skb, len)))
			break;

		opth = (void *)skb->data;
		proto = opth->nexthdr;
		FUNC0(skb, len);
	}

	return proto;
}