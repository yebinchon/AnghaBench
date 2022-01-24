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
struct TYPE_2__ {int /*<<< orphan*/  cbcpu; int /*<<< orphan*/  pcpu; } ;
struct parallel_data {int /*<<< orphan*/  squeue; int /*<<< orphan*/  pqueue; TYPE_1__ cpumask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct parallel_data*) ; 

__attribute__((used)) static void FUNC3(struct parallel_data *pd)
{
	FUNC0(pd->cpumask.pcpu);
	FUNC0(pd->cpumask.cbcpu);
	FUNC1(pd->pqueue);
	FUNC1(pd->squeue);
	FUNC2(pd);
}