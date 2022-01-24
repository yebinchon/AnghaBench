#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tnl_ptk_info {scalar_t__ proto; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_ERSPAN ; 
 int /*<<< orphan*/  ETH_P_ERSPAN2 ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMP_PORT_UNREACH ; 
 scalar_t__ PACKET_RCVD ; 
 scalar_t__ FUNC0 (struct sk_buff*,struct tnl_ptk_info*,int) ; 
 int FUNC1 (struct sk_buff*,struct tnl_ptk_info*,int*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,struct tnl_ptk_info*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb)
{
	struct tnl_ptk_info tpi;
	bool csum_err = false;
	int hdr_len;

#ifdef CONFIG_NET_IPGRE_BROADCAST
	if (ipv4_is_multicast(ip_hdr(skb)->daddr)) {
		/* Looped back packet, drop it! */
		if (rt_is_output_route(skb_rtable(skb)))
			goto drop;
	}
#endif

	hdr_len = FUNC1(skb, &tpi, &csum_err, FUNC2(ETH_P_IP), 0);
	if (hdr_len < 0)
		goto drop;

	if (FUNC10(tpi.proto == FUNC2(ETH_P_ERSPAN) ||
		     tpi.proto == FUNC2(ETH_P_ERSPAN2))) {
		if (FUNC0(skb, &tpi, hdr_len) == PACKET_RCVD)
			return 0;
		goto out;
	}

	if (FUNC5(skb, &tpi, hdr_len) == PACKET_RCVD)
		return 0;

out:
	FUNC3(skb, ICMP_DEST_UNREACH, ICMP_PORT_UNREACH, 0);
drop:
	FUNC7(skb);
	return 0;
}