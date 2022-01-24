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
struct o2nm_node {int dummy; } ;
struct o2hb_node_event {int hn_event_type; int hn_node_num; int /*<<< orphan*/  hn_item; struct o2nm_node* hn_node; } ;
typedef  enum o2hb_callback_type { ____Placeholder_o2hb_callback_type } o2hb_callback_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ML_HEARTBEAT ; 
 int O2HB_NODE_DOWN_CB ; 
 int O2HB_NODE_UP_CB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  o2hb_live_lock ; 
 int /*<<< orphan*/  o2hb_node_events ; 

__attribute__((used)) static void FUNC4(struct o2hb_node_event *event,
				  enum o2hb_callback_type type,
				  struct o2nm_node *node,
				  int node_num)
{
	FUNC1(&o2hb_live_lock);

	FUNC0((!node) && (type != O2HB_NODE_DOWN_CB));

	event->hn_event_type = type;
	event->hn_node = node;
	event->hn_node_num = node_num;

	FUNC3(ML_HEARTBEAT, "Queue node %s event for node %d\n",
	     type == O2HB_NODE_UP_CB ? "UP" : "DOWN", node_num);

	FUNC2(&event->hn_item, &o2hb_node_events);
}