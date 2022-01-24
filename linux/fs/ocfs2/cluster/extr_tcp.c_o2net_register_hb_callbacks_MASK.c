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

/* Variables and functions */
 int /*<<< orphan*/  O2HB_NODE_DOWN_CB ; 
 int /*<<< orphan*/  O2HB_NODE_UP_CB ; 
 int /*<<< orphan*/  O2NET_HB_PRI ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  o2net_hb_down ; 
 int /*<<< orphan*/  o2net_hb_node_down_cb ; 
 int /*<<< orphan*/  o2net_hb_node_up_cb ; 
 int /*<<< orphan*/  o2net_hb_up ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(void)
{
	int ret;

	FUNC1(&o2net_hb_down, O2HB_NODE_DOWN_CB,
			    o2net_hb_node_down_cb, NULL, O2NET_HB_PRI);
	FUNC1(&o2net_hb_up, O2HB_NODE_UP_CB,
			    o2net_hb_node_up_cb, NULL, O2NET_HB_PRI);

	ret = FUNC0(NULL, &o2net_hb_up);
	if (ret == 0)
		ret = FUNC0(NULL, &o2net_hb_down);

	if (ret)
		FUNC2();

	return ret;
}