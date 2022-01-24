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
struct sk_buff {int /*<<< orphan*/  vlan_proto; } ;
typedef  int /*<<< orphan*/  netdev_features_t ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC3(struct sk_buff *skb,
					  netdev_features_t features)
{
	if (FUNC1(skb) &&
	    !FUNC2(features, skb->vlan_proto))
		skb = FUNC0(skb);
	return skb;
}