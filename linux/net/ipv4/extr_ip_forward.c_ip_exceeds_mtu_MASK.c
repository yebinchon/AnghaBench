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
struct sk_buff {unsigned int len; scalar_t__ ignore_df; } ;
struct TYPE_4__ {unsigned int frag_max_size; } ;
struct TYPE_3__ {int frag_off; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff const*) ; 
 int /*<<< orphan*/  IP_DF ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct sk_buff const*) ; 
 scalar_t__ FUNC3 (struct sk_buff const*,unsigned int) ; 
 scalar_t__ FUNC4 (struct sk_buff const*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static bool FUNC6(const struct sk_buff *skb, unsigned int mtu)
{
	if (skb->len <= mtu)
		return false;

	if (FUNC5((FUNC2(skb)->frag_off & FUNC1(IP_DF)) == 0))
		return false;

	/* original fragment exceeds mtu and DF is set */
	if (FUNC5(FUNC0(skb)->frag_max_size > mtu))
		return true;

	if (skb->ignore_df)
		return false;

	if (FUNC4(skb) && FUNC3(skb, mtu))
		return false;

	return true;
}