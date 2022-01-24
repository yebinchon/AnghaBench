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
struct sk_buff {scalar_t__ protocol; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_2__ {scalar_t__ h_vlan_encapsulated_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_8021Q ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff const*) ; 
 TYPE_1__* FUNC2 (struct sk_buff const*) ; 

__attribute__((used)) static inline __be16 FUNC3(const struct sk_buff *skb)
{
	if (FUNC1(skb))
		return skb->protocol;
	else if (skb->protocol == FUNC0(ETH_P_8021Q))
		return FUNC2(skb)->h_vlan_encapsulated_proto;
	else
		return 0;
}