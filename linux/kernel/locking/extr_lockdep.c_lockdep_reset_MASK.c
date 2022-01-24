#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct held_lock {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  held_locks; } ;

/* Variables and functions */
 int CHAINHASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int MAX_LOCK_DEPTH ; 
 scalar_t__ chainhash_table ; 
 TYPE_1__* current ; 
 int debug_locks ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ nr_hardirq_chains ; 
 scalar_t__ nr_process_chains ; 
 scalar_t__ nr_softirq_chains ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

void FUNC5(void)
{
	unsigned long flags;
	int i;

	FUNC4(flags);
	FUNC1(current);
	FUNC2(current->held_locks, 0, MAX_LOCK_DEPTH*sizeof(struct held_lock));
	nr_hardirq_chains = 0;
	nr_softirq_chains = 0;
	nr_process_chains = 0;
	debug_locks = 1;
	for (i = 0; i < CHAINHASH_SIZE; i++)
		FUNC0(chainhash_table + i);
	FUNC3(flags);
}