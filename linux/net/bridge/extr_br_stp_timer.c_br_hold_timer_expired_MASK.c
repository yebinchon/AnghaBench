#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct net_bridge_port {TYPE_2__* br; scalar_t__ config_pending; TYPE_1__* dev; scalar_t__ port_no; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge_port*) ; 
 struct net_bridge_port* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hold_timer ; 
 struct net_bridge_port* p ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct net_bridge_port *p = FUNC2(p, t, hold_timer);

	FUNC0(p->br, "port %u(%s) hold timer expired\n",
		 (unsigned int) p->port_no, p->dev->name);

	FUNC3(&p->br->lock);
	if (p->config_pending)
		FUNC1(p);
	FUNC4(&p->br->lock);
}