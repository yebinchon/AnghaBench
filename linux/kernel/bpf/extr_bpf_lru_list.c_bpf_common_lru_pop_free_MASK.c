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
typedef  int /*<<< orphan*/  u32 ;
struct bpf_lru_node {int dummy; } ;
struct bpf_lru_locallist {int next_steal; int /*<<< orphan*/  lock; } ;
struct bpf_common_lru {int /*<<< orphan*/  local_list; } ;
struct bpf_lru {struct bpf_common_lru common_lru; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_lru*,struct bpf_lru_locallist*,int,struct bpf_lru_node*,int /*<<< orphan*/ ) ; 
 struct bpf_lru_node* FUNC1 (struct bpf_lru_locallist*) ; 
 struct bpf_lru_node* FUNC2 (struct bpf_lru*,struct bpf_lru_locallist*) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_lru*,struct bpf_lru_locallist*) ; 
 int FUNC4 (int) ; 
 struct bpf_lru_locallist* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct bpf_lru_node *FUNC9(struct bpf_lru *lru,
						    u32 hash)
{
	struct bpf_lru_locallist *loc_l, *steal_loc_l;
	struct bpf_common_lru *clru = &lru->common_lru;
	struct bpf_lru_node *node;
	int steal, first_steal;
	unsigned long flags;
	int cpu = FUNC6();

	loc_l = FUNC5(clru->local_list, cpu);

	FUNC7(&loc_l->lock, flags);

	node = FUNC1(loc_l);
	if (!node) {
		FUNC3(lru, loc_l);
		node = FUNC1(loc_l);
	}

	if (node)
		FUNC0(lru, loc_l, cpu, node, hash);

	FUNC8(&loc_l->lock, flags);

	if (node)
		return node;

	/* No free nodes found from the local free list and
	 * the global LRU list.
	 *
	 * Steal from the local free/pending list of the
	 * current CPU and remote CPU in RR.  It starts
	 * with the loc_l->next_steal CPU.
	 */

	first_steal = loc_l->next_steal;
	steal = first_steal;
	do {
		steal_loc_l = FUNC5(clru->local_list, steal);

		FUNC7(&steal_loc_l->lock, flags);

		node = FUNC1(steal_loc_l);
		if (!node)
			node = FUNC2(lru, steal_loc_l);

		FUNC8(&steal_loc_l->lock, flags);

		steal = FUNC4(steal);
	} while (!node && steal != first_steal);

	loc_l->next_steal = steal;

	if (node) {
		FUNC7(&loc_l->lock, flags);
		FUNC0(lru, loc_l, cpu, node, hash);
		FUNC8(&loc_l->lock, flags);
	}

	return node;
}