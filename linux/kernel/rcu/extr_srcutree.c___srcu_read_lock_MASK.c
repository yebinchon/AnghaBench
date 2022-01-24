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
struct srcu_struct {TYPE_1__* sda; int /*<<< orphan*/  srcu_idx; } ;
struct TYPE_2__ {int /*<<< orphan*/ * srcu_lock_count; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct srcu_struct *ssp)
{
	int idx;

	idx = FUNC0(ssp->srcu_idx) & 0x1;
	FUNC2(ssp->sda->srcu_lock_count[idx]);
	FUNC1(); /* B */  /* Avoid leaking the critical section. */
	return idx;
}