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
typedef  void* u64 ;
struct cpudl {int /*<<< orphan*/  lock; TYPE_1__* elements; int /*<<< orphan*/  free_cpus; int /*<<< orphan*/  size; } ;
struct TYPE_2__ {int idx; int cpu; void* dl; } ;

/* Variables and functions */
 int IDX_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpudl*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cpudl*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct cpudl *cp, int cpu, u64 dl)
{
	int old_idx;
	unsigned long flags;

	FUNC0(!FUNC1(cpu));

	FUNC5(&cp->lock, flags);

	old_idx = cp->elements[cpu].idx;
	if (old_idx == IDX_INVALID) {
		int new_idx = cp->size++;

		cp->elements[new_idx].dl = dl;
		cp->elements[new_idx].cpu = cpu;
		cp->elements[cpu].idx = new_idx;
		FUNC3(cp, new_idx);
		FUNC4(cpu, cp->free_cpus);
	} else {
		cp->elements[old_idx].dl = dl;
		FUNC2(cp, old_idx);
	}

	FUNC6(&cp->lock, flags);
}