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
typedef  int u64 ;
struct sw_flow_match {int dummy; } ;
struct nlattr {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_P_802_3_MIN ; 
 size_t OVS_KEY_ATTR_ETHERTYPE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sw_flow_match*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ eth ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sw_flow_match *match,
				       u64 *attrs, const struct nlattr **a,
				       bool is_mask, bool log)
{
	__be16 eth_type;

	eth_type = FUNC4(a[OVS_KEY_ATTR_ETHERTYPE]);
	if (is_mask) {
		/* Always exact match EtherType. */
		eth_type = FUNC3(0xffff);
	} else if (!FUNC2(eth_type)) {
		FUNC0(log, "EtherType %x is less than min %x",
				FUNC5(eth_type), ETH_P_802_3_MIN);
		return -EINVAL;
	}

	FUNC1(match, eth.type, eth_type, is_mask);
	*attrs &= ~(1 << OVS_KEY_ATTR_ETHERTYPE);
	return 0;
}