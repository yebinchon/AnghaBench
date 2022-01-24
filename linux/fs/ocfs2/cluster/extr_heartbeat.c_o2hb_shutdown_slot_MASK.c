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
struct o2hb_node_event {int /*<<< orphan*/  hn_item; } ;
struct o2hb_disk_slot {size_t ds_node_num; int /*<<< orphan*/  ds_live_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ML_HEARTBEAT ; 
 int /*<<< orphan*/  O2HB_NODE_DOWN_CB ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  o2hb_live_lock ; 
 int /*<<< orphan*/  o2hb_live_node_bitmap ; 
 int /*<<< orphan*/ * o2hb_live_slots ; 
 int /*<<< orphan*/  FUNC5 (struct o2hb_node_event*,int /*<<< orphan*/ ,struct o2nm_node*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct o2hb_node_event*) ; 
 struct o2nm_node* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct o2nm_node*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct o2hb_disk_slot *slot)
{
	struct o2hb_node_event event =
		{ .hn_item = FUNC0(event.hn_item), };
	struct o2nm_node *node;
	int queued = 0;

	node = FUNC7(slot->ds_node_num);
	if (!node)
		return;

	FUNC9(&o2hb_live_lock);
	if (!FUNC3(&slot->ds_live_item)) {
		FUNC4(ML_HEARTBEAT, "Shutdown, node %d leaves region\n",
		     slot->ds_node_num);

		FUNC2(&slot->ds_live_item);

		if (FUNC3(&o2hb_live_slots[slot->ds_node_num])) {
			FUNC1(slot->ds_node_num, o2hb_live_node_bitmap);

			FUNC5(&event, O2HB_NODE_DOWN_CB, node,
					      slot->ds_node_num);
			queued = 1;
		}
	}
	FUNC10(&o2hb_live_lock);

	if (queued)
		FUNC6(&event);

	FUNC8(node);
}