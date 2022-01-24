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
struct batadv_orig_node {int /*<<< orphan*/  neigh_list_lock; struct batadv_orig_ifinfo* last_bonding_candidate; } ;
struct batadv_orig_ifinfo {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct batadv_orig_ifinfo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct batadv_orig_node *orig_node,
			    struct batadv_orig_ifinfo *new_candidate)
{
	struct batadv_orig_ifinfo *old_candidate;

	FUNC2(&orig_node->neigh_list_lock);
	old_candidate = orig_node->last_bonding_candidate;

	if (new_candidate)
		FUNC1(&new_candidate->refcount);
	orig_node->last_bonding_candidate = new_candidate;
	FUNC3(&orig_node->neigh_list_lock);

	if (old_candidate)
		FUNC0(old_candidate);
}