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
struct TYPE_4__ {int /*<<< orphan*/  addr; int /*<<< orphan*/ * prio; } ;
struct net_bridge_port {scalar_t__ state; TYPE_1__* dev; scalar_t__ port_no; TYPE_2__ designated_bridge; struct net_bridge* br; } ;
struct net_bridge {int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ bridge_id ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ BR_STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*,char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_bridge*) ; 
 struct net_bridge_port* FUNC6 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  message_age_timer ; 
 struct net_bridge_port* p ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct timer_list *t)
{
	struct net_bridge_port *p = FUNC6(p, t, message_age_timer);
	struct net_bridge *br = p->br;
	const bridge_id *id = &p->designated_bridge;
	int was_root;

	if (p->state == BR_STATE_DISABLED)
		return;

	FUNC3(br, "port %u(%s) neighbor %.2x%.2x.%pM lost\n",
		(unsigned int) p->port_no, p->dev->name,
		id->prio[0], id->prio[1], &id->addr);

	/*
	 * According to the spec, the message age timer cannot be
	 * running when we are the root bridge. So..  this was_root
	 * check is redundant. I'm leaving it in for now, though.
	 */
	FUNC7(&br->lock);
	if (p->state == BR_STATE_DISABLED)
		goto unlock;
	was_root = FUNC4(br);

	FUNC0(p);
	FUNC2(br);
	FUNC5(br);
	if (FUNC4(br) && !was_root)
		FUNC1(br);
 unlock:
	FUNC8(&br->lock);
}