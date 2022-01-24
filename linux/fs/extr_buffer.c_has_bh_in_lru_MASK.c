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
struct bh_lru {scalar_t__* bhs; } ;

/* Variables and functions */
 int BH_LRU_SIZE ; 
 int /*<<< orphan*/  bh_lrus ; 
 struct bh_lru* FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC1(int cpu, void *dummy)
{
	struct bh_lru *b = FUNC0(&bh_lrus, cpu);
	int i;
	
	for (i = 0; i < BH_LRU_SIZE; i++) {
		if (b->bhs[i])
			return 1;
	}

	return 0;
}