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
struct net_bridge_port {int /*<<< orphan*/  dev; TYPE_1__* br; scalar_t__ config_pending; scalar_t__ topology_change_ack; int /*<<< orphan*/  port_no; int /*<<< orphan*/  priority; int /*<<< orphan*/  port_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  ageing_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  BR_STATE_BLOCKING ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void FUNC5(struct net_bridge_port *p)
{
	int err;

	p->port_id = FUNC2(p->priority, p->port_no);
	FUNC1(p);
	FUNC3(p, BR_STATE_BLOCKING);
	p->topology_change_ack = 0;
	p->config_pending = 0;

	err = FUNC0(p->dev, p->br->ageing_time);
	if (err)
		FUNC4(p->dev, "failed to offload ageing time\n");
}