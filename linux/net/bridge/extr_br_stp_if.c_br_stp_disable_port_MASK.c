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
struct net_bridge_port {int /*<<< orphan*/  backup_port; int /*<<< orphan*/  hold_timer; int /*<<< orphan*/  forward_delay_timer; int /*<<< orphan*/  message_age_timer; scalar_t__ config_pending; scalar_t__ topology_change_ack; struct net_bridge* br; } ;
struct net_bridge {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BR_STATE_DISABLED ; 
 int /*<<< orphan*/  RTM_NEWLINK ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*,struct net_bridge_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct net_bridge_port*) ; 
 int FUNC5 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(struct net_bridge_port *p)
{
	struct net_bridge *br = p->br;
	int wasroot;

	wasroot = FUNC5(br);
	FUNC0(p);
	FUNC8(p, BR_STATE_DISABLED);
	p->topology_change_ack = 0;
	p->config_pending = 0;

	FUNC4(RTM_NEWLINK, NULL, p);

	FUNC9(&p->message_age_timer);
	FUNC9(&p->forward_delay_timer);
	FUNC9(&p->hold_timer);

	if (!FUNC10(p->backup_port))
		FUNC3(br, p, 0, 0);
	FUNC6(p);

	FUNC2(br);

	FUNC7(br);

	if (FUNC5(br) && !wasroot)
		FUNC1(br);
}