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
struct sk_buff {unsigned int len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff const*,unsigned int) ; 
 scalar_t__ FUNC1 (struct sk_buff const*) ; 

__attribute__((used)) static bool FUNC2(const struct sk_buff *skb, unsigned int mtu)
{
	if (skb->len <= mtu)
		return false;

	if (FUNC1(skb) && FUNC0(skb, mtu))
		return false;

	return true;
}