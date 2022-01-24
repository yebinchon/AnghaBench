#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IP6SKB_XFRM_TRANSFORMED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sock*,struct sk_buff*) ; 

int FUNC3(struct sock *sk, struct sk_buff *skb)
{
	FUNC1(FUNC0(skb), 0, sizeof(*FUNC0(skb)));

#ifdef CONFIG_NETFILTER
	IP6CB(skb)->flags |= IP6SKB_XFRM_TRANSFORMED;
#endif

	return FUNC2(sk, skb);
}