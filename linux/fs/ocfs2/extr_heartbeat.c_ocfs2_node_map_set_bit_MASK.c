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
struct ocfs2_node_map {int num_nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_node_map*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ocfs2_super *osb,
			    struct ocfs2_node_map *map,
			    int bit)
{
	if (bit==-1)
		return;
	FUNC0(bit >= map->num_nodes);
	FUNC2(&osb->node_map_lock);
	FUNC1(map, bit);
	FUNC3(&osb->node_map_lock);
}