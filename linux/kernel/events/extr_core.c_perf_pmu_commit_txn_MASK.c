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
struct pmu {int dummy; } ;

/* Variables and functions */
 unsigned int PERF_PMU_TXN_ADD ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nop_txn_flags ; 
 int /*<<< orphan*/  FUNC2 (struct pmu*) ; 

__attribute__((used)) static int FUNC3(struct pmu *pmu)
{
	unsigned int flags = FUNC0(nop_txn_flags);

	FUNC1(nop_txn_flags, 0);

	if (flags & ~PERF_PMU_TXN_ADD)
		return 0;

	FUNC2(pmu);
	return 0;
}