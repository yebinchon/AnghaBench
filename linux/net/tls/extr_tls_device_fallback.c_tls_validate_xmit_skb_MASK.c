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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* netdev; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sock*) ; 
 struct sk_buff* FUNC1 (struct sock*,struct sk_buff*) ; 

struct sk_buff *FUNC2(struct sock *sk,
				      struct net_device *dev,
				      struct sk_buff *skb)
{
	if (dev == FUNC0(sk)->netdev)
		return skb;

	return FUNC1(sk, skb);
}