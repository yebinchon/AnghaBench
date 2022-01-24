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
struct sock {int dummy; } ;
struct sk_buff {void* protocol; int /*<<< orphan*/  len; } ;
struct net {int dummy; } ;
struct iphdr {void* tot_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
 int /*<<< orphan*/  NF_INET_LOCAL_OUT ; 
 int /*<<< orphan*/  dst_output ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct iphdr*) ; 
 struct sk_buff* FUNC3 (struct sock*,struct sk_buff*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*,struct sock*,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	struct iphdr *iph = FUNC1(skb);

	iph->tot_len = FUNC0(skb->len);
	FUNC2(iph);

	/* if egress device is enslaved to an L3 master device pass the
	 * skb to its handler for processing
	 */
	skb = FUNC3(sk, skb);
	if (FUNC6(!skb))
		return 0;

	skb->protocol = FUNC0(ETH_P_IP);

	return FUNC4(NFPROTO_IPV4, NF_INET_LOCAL_OUT,
		       net, sk, skb, NULL, FUNC5(skb)->dev,
		       dst_output);
}