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
struct TYPE_2__ {int nr; int /*<<< orphan*/ * fds; } ;
struct bpf_program {int /*<<< orphan*/ * line_info; int /*<<< orphan*/ * func_info; TYPE_1__ instances; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 

void FUNC3(struct bpf_program *prog)
{
	int i;

	if (!prog)
		return;

	/*
	 * If the object is opened but the program was never loaded,
	 * it is possible that prog->instances.nr == -1.
	 */
	if (prog->instances.nr > 0) {
		for (i = 0; i < prog->instances.nr; i++)
			FUNC1(prog->instances.fds[i]);
	} else if (prog->instances.nr != -1) {
		FUNC0("Internal error: instances.nr is %d\n",
			   prog->instances.nr);
	}

	prog->instances.nr = -1;
	FUNC2(&prog->instances.fds);

	FUNC2(&prog->func_info);
	FUNC2(&prog->line_info);
}