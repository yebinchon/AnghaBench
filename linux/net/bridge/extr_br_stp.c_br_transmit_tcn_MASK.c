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
struct net_bridge_port {int dummy; } ;
struct net_bridge {int /*<<< orphan*/  root_port; } ;

/* Variables and functions */
 struct net_bridge_port* FUNC0 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge_port*) ; 

void FUNC3(struct net_bridge *br)
{
	struct net_bridge_port *p;

	p = FUNC0(br, br->root_port);
	if (p)
		FUNC2(p);
	else
		FUNC1(br, "root port %u not found for topology notice\n",
			  br->root_port);
}