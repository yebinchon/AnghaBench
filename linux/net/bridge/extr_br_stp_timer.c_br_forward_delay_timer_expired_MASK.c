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
struct timer_list {int dummy; } ;
struct net_bridge_port {scalar_t__ state; int /*<<< orphan*/  forward_delay_timer; TYPE_1__* dev; scalar_t__ port_no; struct net_bridge* br; } ;
struct net_bridge {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; scalar_t__ forward_delay; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ BR_STATE_FORWARDING ; 
 scalar_t__ BR_STATE_LEARNING ; 
 scalar_t__ BR_STATE_LISTENING ; 
 int /*<<< orphan*/  RTM_NEWLINK ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct net_bridge_port*) ; 
 scalar_t__ FUNC2 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge_port*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct net_bridge*) ; 
 int /*<<< orphan*/  forward_delay_timer ; 
 struct net_bridge_port* FUNC5 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct net_bridge_port* p ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct timer_list *t)
{
	struct net_bridge_port *p = FUNC5(p, t, forward_delay_timer);
	struct net_bridge *br = p->br;

	FUNC0(br, "port %u(%s) forward delay timer\n",
		 (unsigned int) p->port_no, p->dev->name);
	FUNC10(&br->lock);
	if (p->state == BR_STATE_LISTENING) {
		FUNC3(p, BR_STATE_LEARNING);
		FUNC6(&p->forward_delay_timer,
			  jiffies + br->forward_delay);
	} else if (p->state == BR_STATE_LEARNING) {
		FUNC3(p, BR_STATE_FORWARDING);
		if (FUNC2(br))
			FUNC4(br);
		FUNC7(br->dev);
	}
	FUNC8();
	FUNC1(RTM_NEWLINK, NULL, p);
	FUNC9();
	FUNC11(&br->lock);
}