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
typedef  union iucv_param {int dummy; } iucv_param ;

/* Variables and functions */
 int /*<<< orphan*/  IUCV_RETRIEVE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iucv_buffer_cpumask ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,union iucv_param*) ; 
 union iucv_param** iucv_param_irq ; 
 int FUNC4 () ; 

__attribute__((used)) static void FUNC5(void *data)
{
	int cpu = FUNC4();
	union iucv_param *parm;

	if (!FUNC1(cpu, &iucv_buffer_cpumask))
		return;

	/* Block iucv interrupts. */
	FUNC2(NULL);

	/* Retrieve interrupt buffer. */
	parm = iucv_param_irq[cpu];
	FUNC3(IUCV_RETRIEVE_BUFFER, parm);

	/* Clear indication that an iucv buffer exists for this cpu. */
	FUNC0(cpu, &iucv_buffer_cpumask);
}