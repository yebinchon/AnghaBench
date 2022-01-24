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
struct sk_buff {int dummy; } ;
struct net_protocol {int /*<<< orphan*/  handler; int /*<<< orphan*/  no_policy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMP_PROT_UNREACH ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  IPSTATS_MIB_INDELIVERS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INUNKNOWNPROTOS ; 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * inet_protos ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*,int) ; 
 struct net_protocol* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcp_v4_rcv ; 
 int /*<<< orphan*/  udp_rcv ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 

void FUNC9(struct net *net, struct sk_buff *skb, int protocol)
{
	const struct net_protocol *ipprot;
	int raw, ret;

resubmit:
	raw = FUNC6(skb, protocol);

	ipprot = FUNC7(inet_protos[protocol]);
	if (ipprot) {
		if (!ipprot->no_policy) {
			if (!FUNC8(NULL, XFRM_POLICY_IN, skb)) {
				FUNC4(skb);
				return;
			}
			FUNC5(skb);
		}
		ret = FUNC0(ipprot->handler, tcp_v4_rcv, udp_rcv,
				      skb);
		if (ret < 0) {
			protocol = -ret;
			goto resubmit;
		}
		FUNC1(net, IPSTATS_MIB_INDELIVERS);
	} else {
		if (!raw) {
			if (FUNC8(NULL, XFRM_POLICY_IN, skb)) {
				FUNC1(net, IPSTATS_MIB_INUNKNOWNPROTOS);
				FUNC3(skb, ICMP_DEST_UNREACH,
					  ICMP_PROT_UNREACH, 0);
			}
			FUNC4(skb);
		} else {
			FUNC1(net, IPSTATS_MIB_INDELIVERS);
			FUNC2(skb);
		}
	}
}