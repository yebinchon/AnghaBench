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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int ETH_HLEN ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 

struct sk_buff *FUNC7(struct sk_buff *skb)
{
	u8 *from = FUNC1(skb);
	u8 *dest = from + VLAN_HLEN;

	FUNC0(dest, from, ETH_HLEN - VLAN_HLEN);
	FUNC2(skb, VLAN_HLEN);
	FUNC4(skb, ETH_HLEN);
	FUNC5(skb);
	FUNC6(skb);
	FUNC3(skb, ETH_HLEN);

	return skb;
}