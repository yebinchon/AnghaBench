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
struct machine {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_KERNEL_ID ; 
 int /*<<< orphan*/  FUNC0 (struct machine*) ; 
 scalar_t__ FUNC1 (struct machine*) ; 
 int /*<<< orphan*/  FUNC2 (struct machine*,char*,int /*<<< orphan*/ ) ; 
 struct machine* FUNC3 (int) ; 

struct machine *FUNC4(void)
{
	struct machine *machine = FUNC3(sizeof(*machine));

	if (machine != NULL) {
		FUNC2(machine, "", HOST_KERNEL_ID);

		if (FUNC1(machine) < 0)
			goto out_delete;
	}

	return machine;
out_delete:
	FUNC0(machine);
	return NULL;
}