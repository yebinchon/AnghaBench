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
struct bpf_lru_node {int /*<<< orphan*/  type; } ;
struct bpf_lru_list {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_LRU_LIST_T_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_lru_list*,struct bpf_lru_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct bpf_lru_list *l,
				   struct bpf_lru_node *node)
{
	unsigned long flags;

	if (FUNC1(FUNC0(node->type)))
		return;

	FUNC3(&l->lock, flags);
	FUNC2(l, node, BPF_LRU_LIST_T_FREE);
	FUNC4(&l->lock, flags);
}