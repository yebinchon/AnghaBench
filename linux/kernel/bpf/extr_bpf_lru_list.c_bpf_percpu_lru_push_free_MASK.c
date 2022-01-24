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
struct bpf_lru_node {int /*<<< orphan*/  cpu; } ;
struct bpf_lru_list {int /*<<< orphan*/  lock; } ;
struct bpf_lru {int /*<<< orphan*/  percpu_lru; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_LRU_LIST_T_FREE ; 
 int /*<<< orphan*/  FUNC0 (struct bpf_lru_list*,struct bpf_lru_node*,int /*<<< orphan*/ ) ; 
 struct bpf_lru_list* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct bpf_lru *lru,
				     struct bpf_lru_node *node)
{
	struct bpf_lru_list *l;
	unsigned long flags;

	l = FUNC1(lru->percpu_lru, node->cpu);

	FUNC2(&l->lock, flags);

	FUNC0(l, node, BPF_LRU_LIST_T_FREE);

	FUNC3(&l->lock, flags);
}