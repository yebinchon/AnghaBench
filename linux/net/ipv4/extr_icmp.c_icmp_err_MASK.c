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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  dev; scalar_t__ data; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; } ;
struct icmphdr {scalar_t__ type; } ;
struct TYPE_2__ {int type; int code; } ;

/* Variables and functions */
 int ICMP_DEST_UNREACH ; 
 scalar_t__ ICMP_ECHOREPLY ; 
 int ICMP_FRAG_NEEDED ; 
 int ICMP_REDIRECT ; 
 int /*<<< orphan*/  IPPROTO_ICMP ; 
 struct net* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 

int FUNC5(struct sk_buff *skb, u32 info)
{
	struct iphdr *iph = (struct iphdr *)skb->data;
	int offset = iph->ihl<<2;
	struct icmphdr *icmph = (struct icmphdr *)(skb->data + offset);
	int type = FUNC1(skb)->type;
	int code = FUNC1(skb)->code;
	struct net *net = FUNC0(skb->dev);

	/*
	 * Use ping_err to handle all icmp errors except those
	 * triggered by ICMP_ECHOREPLY which sent from kernel.
	 */
	if (icmph->type != ICMP_ECHOREPLY) {
		FUNC4(skb, offset, info);
		return 0;
	}

	if (type == ICMP_DEST_UNREACH && code == ICMP_FRAG_NEEDED)
		FUNC3(skb, net, info, 0, IPPROTO_ICMP);
	else if (type == ICMP_REDIRECT)
		FUNC2(skb, net, 0, IPPROTO_ICMP);

	return 0;
}