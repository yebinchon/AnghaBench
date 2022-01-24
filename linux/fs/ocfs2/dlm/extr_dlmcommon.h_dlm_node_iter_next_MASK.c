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
struct dlm_node_iter {int curnode; int /*<<< orphan*/  node_map; } ;

/* Variables and functions */
 int ENOENT ; 
 int O2NM_MAX_NODES ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static inline int FUNC1(struct dlm_node_iter *iter)
{
	int bit;
	bit = FUNC0(iter->node_map, O2NM_MAX_NODES, iter->curnode+1);
	if (bit >= O2NM_MAX_NODES) {
		iter->curnode = O2NM_MAX_NODES;
		return -ENOENT;
	}
	iter->curnode = bit;
	return bit;
}