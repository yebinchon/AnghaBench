#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct msghdr {int dummy; } ;
struct TYPE_7__ {scalar_t__ rxinfo; } ;
struct TYPE_8__ {TYPE_1__ bits; } ;
struct ipv6_pinfo {TYPE_2__ rxopt; } ;
struct in6_pktinfo {scalar_t__ ipi6_ifindex; int /*<<< orphan*/  ipi6_addr; } ;
typedef  int /*<<< orphan*/  src_info ;
struct TYPE_12__ {scalar_t__ iif; } ;
struct TYPE_11__ {scalar_t__ ipi_ifindex; } ;
struct TYPE_10__ {int /*<<< orphan*/  daddr; } ;
struct TYPE_9__ {int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 TYPE_6__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPV6_PKTINFO ; 
 TYPE_5__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  SOL_IPV6 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct ipv6_pinfo* FUNC3 (struct sock*) ; 
 TYPE_4__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct in6_pktinfo*) ; 

void FUNC8(struct sock *sk, struct msghdr *msg,
				 struct sk_buff *skb)
{
	struct ipv6_pinfo *np = FUNC3(sk);
	bool is_ipv6 = skb->protocol == FUNC2(ETH_P_IPV6);

	if (np->rxopt.bits.rxinfo) {
		struct in6_pktinfo src_info;

		if (is_ipv6) {
			src_info.ipi6_ifindex = FUNC0(skb)->iif;
			src_info.ipi6_addr = FUNC6(skb)->daddr;
		} else {
			src_info.ipi6_ifindex =
				FUNC1(skb)->ipi_ifindex;
			FUNC5(FUNC4(skb)->daddr,
					       &src_info.ipi6_addr);
		}

		if (src_info.ipi6_ifindex >= 0)
			FUNC7(msg, SOL_IPV6, IPV6_PKTINFO,
				 sizeof(src_info), &src_info);
	}
}