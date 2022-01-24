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
struct xsk_map_node {int /*<<< orphan*/  node; } ;
struct xdp_sock {int /*<<< orphan*/  map_list_lock; int /*<<< orphan*/  map_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct xdp_sock *xs, struct xsk_map_node *node)
{
	FUNC1(&xs->map_list_lock);
	FUNC0(&node->node, &xs->map_list);
	FUNC2(&xs->map_list_lock);
}