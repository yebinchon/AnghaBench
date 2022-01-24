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
struct net_bridge_port {int /*<<< orphan*/  br; TYPE_1__* dev; scalar_t__ port_no; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct net_bridge_port *p)
{
	if (FUNC1(p)) {
		FUNC0(p->br, "port %u(%s) received tcn bpdu\n",
			(unsigned int) p->port_no, p->dev->name);

		FUNC3(p->br);
		FUNC2(p);
	}
}