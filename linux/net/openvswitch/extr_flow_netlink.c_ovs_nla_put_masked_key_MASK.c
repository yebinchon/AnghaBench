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
struct sw_flow {int /*<<< orphan*/  key; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OVS_FLOW_ATTR_KEY ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct sk_buff*) ; 

int FUNC1(const struct sw_flow *flow, struct sk_buff *skb)
{
	return FUNC0(&flow->key, &flow->key,
				OVS_FLOW_ATTR_KEY, false, skb);
}