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
struct ethtool_rx_flow_rule {struct ethtool_rx_flow_rule* rule; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ethtool_rx_flow_rule*) ; 

void FUNC1(struct ethtool_rx_flow_rule *flow)
{
	FUNC0(flow->rule);
	FUNC0(flow);
}