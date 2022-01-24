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
struct bpf_lru_locallist {int next_steal; int /*<<< orphan*/  lock; int /*<<< orphan*/ * lists; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NR_BPF_LRU_LOCAL_LIST_T ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct bpf_lru_locallist *loc_l, int cpu)
{
	int i;

	for (i = 0; i < NR_BPF_LRU_LOCAL_LIST_T; i++)
		FUNC0(&loc_l->lists[i]);

	loc_l->next_steal = cpu;

	FUNC1(&loc_l->lock);
}