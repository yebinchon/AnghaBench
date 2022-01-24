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
struct net_bridge_port {int /*<<< orphan*/  forward_delay_timer; TYPE_1__* dev; scalar_t__ port_no; } ;
struct net_bridge {scalar_t__ forward_delay; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BR_STATE_LISTENING ; 
 int /*<<< orphan*/  RTM_NEWLINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge const*,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC4(const struct net_bridge *br,
			       struct net_bridge_port *p)
{

	FUNC1(br, "port %u(%s) tried to become root port (blocked)",
		  (unsigned int) p->port_no, p->dev->name);

	FUNC2(p, BR_STATE_LISTENING);
	FUNC0(RTM_NEWLINK, NULL, p);

	if (br->forward_delay > 0)
		FUNC3(&p->forward_delay_timer, jiffies + br->forward_delay);
}