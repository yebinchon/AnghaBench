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
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  dsa_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff const*) ; 
 scalar_t__ FUNC2 (struct sk_buff const*) ; 

__attribute__((used)) static bool FUNC3(const struct sk_buff *skb, struct net_device *dev)
{
	if (!FUNC0(dev->dsa_ptr))
		return true;
	if (FUNC1(skb))
		return true;
	if (FUNC2(skb))
		return true;
	return false;
}