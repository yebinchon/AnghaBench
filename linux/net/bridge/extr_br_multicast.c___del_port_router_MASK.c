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
struct net_bridge_port {scalar_t__ multicast_router; TYPE_1__* br; int /*<<< orphan*/  rlist; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ MDB_RTR_TYPE_TEMP ; 
 scalar_t__ MDB_RTR_TYPE_TEMP_QUERY ; 
 int /*<<< orphan*/  RTM_DELMDB ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_bridge_port *p)
{
	if (FUNC3(&p->rlist))
		return;
	FUNC2(&p->rlist);
	FUNC1(p->br->dev, p, RTM_DELMDB);
	FUNC0(p, false);

	/* don't allow timer refresh */
	if (p->multicast_router == MDB_RTR_TYPE_TEMP)
		p->multicast_router = MDB_RTR_TYPE_TEMP_QUERY;
}