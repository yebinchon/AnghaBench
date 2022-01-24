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
struct net_bridge_port {unsigned long path_cost; int /*<<< orphan*/  br; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BR_ADMIN_COST ; 
 unsigned long BR_MAX_PATH_COST ; 
 unsigned long BR_MIN_PATH_COST ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct net_bridge_port *p, unsigned long path_cost)
{
	if (path_cost < BR_MIN_PATH_COST ||
	    path_cost > BR_MAX_PATH_COST)
		return -ERANGE;

	p->flags |= BR_ADMIN_COST;
	p->path_cost = path_cost;
	FUNC0(p->br);
	FUNC1(p->br);
	return 0;
}