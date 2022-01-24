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
struct posix_cputimers {TYPE_1__* bases; } ;
struct TYPE_2__ {int /*<<< orphan*/  tqhead; } ;

/* Variables and functions */
 size_t CPUCLOCK_PROF ; 
 size_t CPUCLOCK_SCHED ; 
 size_t CPUCLOCK_VIRT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct posix_cputimers *pct)
{
	FUNC0(&pct->bases[CPUCLOCK_PROF].tqhead);
	FUNC0(&pct->bases[CPUCLOCK_VIRT].tqhead);
	FUNC0(&pct->bases[CPUCLOCK_SCHED].tqhead);
}