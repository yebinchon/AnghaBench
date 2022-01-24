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
struct sk_buff {int /*<<< orphan*/ * dev; } ;
struct net {int /*<<< orphan*/ * loopback_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_DEST_UNREACH ; 
 unsigned int NF_INET_LOCAL_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned int) ; 

void FUNC2(struct net *net, struct sk_buff *skb_in,
		      unsigned char code, unsigned int hooknum)
{
	if (!FUNC1(skb_in, hooknum))
		return;

	if (hooknum == NF_INET_LOCAL_OUT && skb_in->dev == NULL)
		skb_in->dev = net->loopback_dev;

	FUNC0(skb_in, ICMPV6_DEST_UNREACH, code, 0);
}