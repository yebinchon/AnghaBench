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
struct ocfs2_node_map {int /*<<< orphan*/  map; int /*<<< orphan*/  num_nodes; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCFS2_NODE_MAP_MAX_NODES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ocfs2_node_map *map)
{
	map->num_nodes = OCFS2_NODE_MAP_MAX_NODES;
	FUNC1(map->map, 0, FUNC0(OCFS2_NODE_MAP_MAX_NODES) *
	       sizeof(unsigned long));
}