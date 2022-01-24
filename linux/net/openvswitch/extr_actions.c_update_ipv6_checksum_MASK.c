#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct udphdr {scalar_t__ check; } ;
struct tcphdr {int dummy; } ;
struct sk_buff {int len; scalar_t__ ip_summed; } ;
struct icmp6hdr {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {scalar_t__ icmp6_cksum; } ;
struct TYPE_3__ {scalar_t__ check; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 scalar_t__ CSUM_MANGLED_0 ; 
 scalar_t__ NEXTHDR_ICMP ; 
 scalar_t__ NEXTHDR_TCP ; 
 scalar_t__ NEXTHDR_UDP ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct sk_buff*) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 struct udphdr* FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct sk_buff *skb, u8 l4_proto,
				 __be32 addr[4], const __be32 new_addr[4])
{
	int transport_len = skb->len - FUNC3(skb);

	if (l4_proto == NEXTHDR_TCP) {
		if (FUNC2(transport_len >= sizeof(struct tcphdr)))
			FUNC1(&FUNC4(skb)->check, skb,
						  addr, new_addr, true);
	} else if (l4_proto == NEXTHDR_UDP) {
		if (FUNC2(transport_len >= sizeof(struct udphdr))) {
			struct udphdr *uh = FUNC5(skb);

			if (uh->check || skb->ip_summed == CHECKSUM_PARTIAL) {
				FUNC1(&uh->check, skb,
							  addr, new_addr, true);
				if (!uh->check)
					uh->check = CSUM_MANGLED_0;
			}
		}
	} else if (l4_proto == NEXTHDR_ICMP) {
		if (FUNC2(transport_len >= sizeof(struct icmp6hdr)))
			FUNC1(&FUNC0(skb)->icmp6_cksum,
						  skb, addr, new_addr, true);
	}
}