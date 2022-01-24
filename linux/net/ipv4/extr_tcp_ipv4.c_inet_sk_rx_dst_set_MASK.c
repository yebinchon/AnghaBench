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
struct sock {struct dst_entry* sk_rx_dst; } ;
struct sk_buff {int /*<<< orphan*/  skb_iif; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_dst_ifindex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dst_entry*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 struct dst_entry* FUNC2 (struct sk_buff const*) ; 

void FUNC3(struct sock *sk, const struct sk_buff *skb)
{
	struct dst_entry *dst = FUNC2(skb);

	if (dst && FUNC0(dst)) {
		sk->sk_rx_dst = dst;
		FUNC1(sk)->rx_dst_ifindex = skb->skb_iif;
	}
}