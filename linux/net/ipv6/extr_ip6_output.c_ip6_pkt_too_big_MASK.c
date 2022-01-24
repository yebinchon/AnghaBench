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
struct sk_buff {unsigned int len; scalar_t__ ignore_df; } ;
struct TYPE_2__ {unsigned int frag_max_size; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff const*) ; 
 scalar_t__ FUNC1 (struct sk_buff const*,unsigned int) ; 
 scalar_t__ FUNC2 (struct sk_buff const*) ; 

__attribute__((used)) static bool FUNC3(const struct sk_buff *skb, unsigned int mtu)
{
	if (skb->len <= mtu)
		return false;

	/* ipv6 conntrack defrag sets max_frag_size + ignore_df */
	if (FUNC0(skb)->frag_max_size && FUNC0(skb)->frag_max_size > mtu)
		return true;

	if (skb->ignore_df)
		return false;

	if (FUNC2(skb) && FUNC1(skb, mtu))
		return false;

	return true;
}