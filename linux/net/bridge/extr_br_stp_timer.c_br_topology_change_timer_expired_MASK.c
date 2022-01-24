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
struct timer_list {int dummy; } ;
struct net_bridge {int /*<<< orphan*/  lock; scalar_t__ topology_change_detected; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 struct net_bridge* br ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*,char*) ; 
 struct net_bridge* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  topology_change_timer ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct net_bridge *br = FUNC2(br, t, topology_change_timer);

	FUNC1(br, "topo change timer expired\n");
	FUNC3(&br->lock);
	br->topology_change_detected = 0;
	FUNC0(br, 0);
	FUNC4(&br->lock);
}