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
struct udphdr {int /*<<< orphan*/  check; } ;
struct tcphdr {int /*<<< orphan*/  check; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; } ;
struct ipv6hdr {int nexthdr; } ;
struct ila_params {int dummy; } ;
struct icmp6hdr {int /*<<< orphan*/  icmp6_cksum; } ;
typedef  int /*<<< orphan*/  __wsum ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  CSUM_MANGLED_0 ; 
#define  NEXTHDR_ICMP 130 
#define  NEXTHDR_TCP 129 
#define  NEXTHDR_UDP 128 
 int /*<<< orphan*/  FUNC0 (struct ipv6hdr*,struct ila_params*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 struct ipv6hdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct sk_buff *skb,
				      struct ila_params *p)
{
	size_t nhoff = sizeof(struct ipv6hdr);
	struct ipv6hdr *ip6h = FUNC2(skb);
	__wsum diff;

	switch (ip6h->nexthdr) {
	case NEXTHDR_TCP:
		if (FUNC3(FUNC4(skb, nhoff + sizeof(struct tcphdr)))) {
			struct tcphdr *th = (struct tcphdr *)
					(FUNC5(skb) + nhoff);

			diff = FUNC0(ip6h, p);
			FUNC1(&th->check, skb,
							diff, true);
		}
		break;
	case NEXTHDR_UDP:
		if (FUNC3(FUNC4(skb, nhoff + sizeof(struct udphdr)))) {
			struct udphdr *uh = (struct udphdr *)
					(FUNC5(skb) + nhoff);

			if (uh->check || skb->ip_summed == CHECKSUM_PARTIAL) {
				diff = FUNC0(ip6h, p);
				FUNC1(&uh->check, skb,
								diff, true);
				if (!uh->check)
					uh->check = CSUM_MANGLED_0;
			}
		}
		break;
	case NEXTHDR_ICMP:
		if (FUNC3(FUNC4(skb,
					 nhoff + sizeof(struct icmp6hdr)))) {
			struct icmp6hdr *ih = (struct icmp6hdr *)
					(FUNC5(skb) + nhoff);

			diff = FUNC0(ip6h, p);
			FUNC1(&ih->icmp6_cksum, skb,
							diff, true);
		}
		break;
	}
}