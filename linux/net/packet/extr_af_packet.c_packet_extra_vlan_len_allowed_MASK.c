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
struct sk_buff {int dummy; } ;
struct net_device {scalar_t__ type; } ;
struct TYPE_2__ {scalar_t__ h_proto; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static bool FUNC5(const struct net_device *dev,
					  struct sk_buff *skb)
{
	/* Earlier code assumed this would be a VLAN pkt, double-check
	 * this now that we have the actual packet in hand. We can only
	 * do this check on Ethernet devices.
	 */
	if (FUNC4(dev->type != ARPHRD_ETHER))
		return false;

	FUNC3(skb);
	return FUNC2(FUNC0(skb)->h_proto == FUNC1(ETH_P_8021Q));
}