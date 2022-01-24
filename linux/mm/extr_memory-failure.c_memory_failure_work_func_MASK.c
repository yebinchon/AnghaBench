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
struct work_struct {int dummy; } ;
struct memory_failure_entry {int flags; int /*<<< orphan*/  pfn; int /*<<< orphan*/  member_0; } ;
struct memory_failure_cpu {int /*<<< orphan*/  lock; int /*<<< orphan*/  fifo; } ;

/* Variables and functions */
 int MF_SOFT_OFFLINE ; 
 int FUNC0 (int /*<<< orphan*/ *,struct memory_failure_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  memory_failure_cpu ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct memory_failure_cpu* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct work_struct *work)
{
	struct memory_failure_cpu *mf_cpu;
	struct memory_failure_entry entry = { 0, };
	unsigned long proc_flags;
	int gotten;

	mf_cpu = FUNC6(&memory_failure_cpu);
	for (;;) {
		FUNC4(&mf_cpu->lock, proc_flags);
		gotten = FUNC0(&mf_cpu->fifo, &entry);
		FUNC5(&mf_cpu->lock, proc_flags);
		if (!gotten)
			break;
		if (entry.flags & MF_SOFT_OFFLINE)
			FUNC3(FUNC2(entry.pfn), entry.flags);
		else
			FUNC1(entry.pfn, entry.flags);
	}
}