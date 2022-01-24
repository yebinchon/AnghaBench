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
struct bpf_lru_list {int /*<<< orphan*/  lock; int /*<<< orphan*/ * lists; int /*<<< orphan*/ * next_inactive_rotation; scalar_t__* counts; } ;

/* Variables and functions */
 size_t BPF_LRU_LIST_T_INACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NR_BPF_LRU_LIST_COUNT ; 
 int NR_BPF_LRU_LIST_T ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct bpf_lru_list *l)
{
	int i;

	for (i = 0; i < NR_BPF_LRU_LIST_T; i++)
		FUNC0(&l->lists[i]);

	for (i = 0; i < NR_BPF_LRU_LIST_COUNT; i++)
		l->counts[i] = 0;

	l->next_inactive_rotation = &l->lists[BPF_LRU_LIST_T_INACTIVE];

	FUNC1(&l->lock);
}