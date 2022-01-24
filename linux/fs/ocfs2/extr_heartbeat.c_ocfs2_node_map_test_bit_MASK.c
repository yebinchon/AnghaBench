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
struct ocfs2_super {int /*<<< orphan*/  node_map_lock; } ;
struct ocfs2_node_map {int num_nodes; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 

int FUNC5(struct ocfs2_super *osb,
			    struct ocfs2_node_map *map,
			    int bit)
{
	int ret;
	if (bit >= map->num_nodes) {
		FUNC1(ML_ERROR, "bit=%d map->num_nodes=%d\n", bit, map->num_nodes);
		FUNC0();
	}
	FUNC2(&osb->node_map_lock);
	ret = FUNC4(bit, map->map);
	FUNC3(&osb->node_map_lock);
	return ret;
}