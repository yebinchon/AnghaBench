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
struct machine {int /*<<< orphan*/ * mmap_name; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct machine*) ; 
 scalar_t__ FUNC2 (struct machine*) ; 
 void* FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct machine *machine)
{
	if (FUNC2(machine))
		machine->mmap_name = FUNC3("[kernel.kallsyms]");
	else if (FUNC1(machine))
		machine->mmap_name = FUNC3("[guest.kernel.kallsyms]");
	else if (FUNC0(&machine->mmap_name, "[guest.kernel.kallsyms.%d]",
			  machine->pid) < 0)
		machine->mmap_name = NULL;

	return machine->mmap_name ? 0 : -ENOMEM;
}