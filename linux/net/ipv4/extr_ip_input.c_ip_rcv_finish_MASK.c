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
struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 int FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct net*,struct sock*,struct sk_buff*,struct net_device*) ; 
 struct sk_buff* FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC3(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	struct net_device *dev = skb->dev;
	int ret;

	/* if ingress device is enslaved to an L3 master device pass the
	 * skb to its handler for processing
	 */
	skb = FUNC2(skb);
	if (!skb)
		return NET_RX_SUCCESS;

	ret = FUNC1(net, sk, skb, dev);
	if (ret != NET_RX_DROP)
		ret = FUNC0(skb);
	return ret;
}