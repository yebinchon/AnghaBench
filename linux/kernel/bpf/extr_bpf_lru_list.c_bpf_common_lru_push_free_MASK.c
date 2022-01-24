#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bpf_lru_node {scalar_t__ type; int /*<<< orphan*/  list; scalar_t__ ref; int /*<<< orphan*/  cpu; } ;
struct bpf_lru_locallist {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  lru_list; int /*<<< orphan*/  local_list; } ;
struct bpf_lru {TYPE_1__ common_lru; } ;

/* Variables and functions */
 scalar_t__ BPF_LRU_LIST_T_FREE ; 
 scalar_t__ BPF_LRU_LOCAL_LIST_T_FREE ; 
 scalar_t__ BPF_LRU_LOCAL_LIST_T_PENDING ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bpf_lru_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_lru_locallist*) ; 
 struct bpf_lru_locallist* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct bpf_lru *lru,
				     struct bpf_lru_node *node)
{
	unsigned long flags;

	if (FUNC0(node->type == BPF_LRU_LIST_T_FREE) ||
	    FUNC0(node->type == BPF_LRU_LOCAL_LIST_T_FREE))
		return;

	if (node->type == BPF_LRU_LOCAL_LIST_T_PENDING) {
		struct bpf_lru_locallist *loc_l;

		loc_l = FUNC4(lru->common_lru.local_list, node->cpu);

		FUNC5(&loc_l->lock, flags);

		if (FUNC7(node->type != BPF_LRU_LOCAL_LIST_T_PENDING)) {
			FUNC6(&loc_l->lock, flags);
			goto check_lru_list;
		}

		node->type = BPF_LRU_LOCAL_LIST_T_FREE;
		node->ref = 0;
		FUNC2(&node->list, FUNC3(loc_l));

		FUNC6(&loc_l->lock, flags);
		return;
	}

check_lru_list:
	FUNC1(&lru->common_lru.lru_list, node);
}