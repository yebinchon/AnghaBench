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
struct sock {struct dst_entry* sk_rx_dst; } ;
struct sk_buff {int /*<<< orphan*/  skb_iif; } ;
struct rt6_info {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_dst_ifindex; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_dst_cookie; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dst_entry*) ; 
 TYPE_2__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt6_info const*) ; 
 struct dst_entry* FUNC3 (struct sk_buff const*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk, const struct sk_buff *skb)
{
	struct dst_entry *dst = FUNC3(skb);

	if (dst && FUNC0(dst)) {
		const struct rt6_info *rt = (const struct rt6_info *)dst;

		sk->sk_rx_dst = dst;
		FUNC1(sk)->rx_dst_ifindex = skb->skb_iif;
		FUNC4(sk)->rx_dst_cookie = FUNC2(rt);
	}
}