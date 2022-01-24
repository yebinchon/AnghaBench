#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; int /*<<< orphan*/  info; int /*<<< orphan*/  func; } ;
typedef  TYPE_1__ call_single_data_t ;

/* Variables and functions */
 int CSD_FLAG_LOCK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(int cpu, call_single_data_t *csd)
{
	int err = 0;

	FUNC3();

	/* We could deadlock if we have to wait here with interrupts disabled! */
	if (FUNC0(csd->flags & CSD_FLAG_LOCK))
		FUNC1(csd);

	csd->flags = CSD_FLAG_LOCK;
	FUNC5();

	err = FUNC2(cpu, csd, csd->func, csd->info);
	FUNC4();

	return err;
}