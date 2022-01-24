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
struct TYPE_2__ {int /*<<< orphan*/  unmasked_key; int /*<<< orphan*/  ufid; int /*<<< orphan*/  ufid_len; } ;
struct sw_flow {TYPE_1__ id; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OVS_FLOW_ATTR_KEY ; 
 int /*<<< orphan*/  OVS_FLOW_ATTR_UFID ; 
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct sk_buff*) ; 

int FUNC3(const struct sw_flow *flow, struct sk_buff *skb)
{
	if (FUNC1(&flow->id))
		return FUNC0(skb, OVS_FLOW_ATTR_UFID, flow->id.ufid_len,
			       flow->id.ufid);

	return FUNC2(flow->id.unmasked_key, flow->id.unmasked_key,
			       OVS_FLOW_ATTR_KEY, false, skb);
}