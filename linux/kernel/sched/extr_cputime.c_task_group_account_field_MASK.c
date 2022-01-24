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
typedef  int /*<<< orphan*/  u64 ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * cpustat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ kernel_cpustat ; 

__attribute__((used)) static inline void FUNC2(struct task_struct *p, int index,
					    u64 tmp)
{
	/*
	 * Since all updates are sure to touch the root cgroup, we
	 * get ourselves ahead and touch it first. If the root cgroup
	 * is the only cgroup, then nothing else should be necessary.
	 *
	 */
	FUNC0(kernel_cpustat.cpustat[index], tmp);

	FUNC1(p, index, tmp);
}