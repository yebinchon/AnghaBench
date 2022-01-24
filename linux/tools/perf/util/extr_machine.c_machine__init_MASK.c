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
struct thread {int dummy; } ;
struct machine {int pid; int kptr_restrict_warned; int comm_exec; int /*<<< orphan*/ * mmap_name; int /*<<< orphan*/ * root_dir; int /*<<< orphan*/ * current_tid; int /*<<< orphan*/ * vmlinux_map; scalar_t__ kernel_start; scalar_t__ id_hdr_size; int /*<<< orphan*/ * env; int /*<<< orphan*/ * vdso_info; int /*<<< orphan*/  dsos; int /*<<< orphan*/  rb_node; int /*<<< orphan*/  kmaps; } ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  comm ;

/* Variables and functions */
 int ENOMEM ; 
 int HOST_KERNEL_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct thread* FUNC2 (struct machine*,int,int) ; 
 scalar_t__ FUNC3 (struct machine*) ; 
 int /*<<< orphan*/  FUNC4 (struct machine*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct machine*) ; 
 int /*<<< orphan*/  FUNC6 (struct machine*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct thread*) ; 
 int /*<<< orphan*/  FUNC10 (struct thread*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **) ; 

int FUNC12(struct machine *machine, const char *root_dir, pid_t pid)
{
	int err = -ENOMEM;

	FUNC6(machine, 0, sizeof(*machine));
	FUNC5(&machine->kmaps, machine);
	FUNC0(&machine->rb_node);
	FUNC1(&machine->dsos);

	FUNC4(machine);

	machine->vdso_info = NULL;
	machine->env = NULL;

	machine->pid = pid;

	machine->id_hdr_size = 0;
	machine->kptr_restrict_warned = false;
	machine->comm_exec = false;
	machine->kernel_start = 0;
	machine->vmlinux_map = NULL;

	machine->root_dir = FUNC8(root_dir);
	if (machine->root_dir == NULL)
		return -ENOMEM;

	if (FUNC3(machine))
		goto out;

	if (pid != HOST_KERNEL_ID) {
		struct thread *thread = FUNC2(machine, -1,
								pid);
		char comm[64];

		if (thread == NULL)
			goto out;

		FUNC7(comm, sizeof(comm), "[guest/%d]", pid);
		FUNC10(thread, comm, 0);
		FUNC9(thread);
	}

	machine->current_tid = NULL;
	err = 0;

out:
	if (err) {
		FUNC11(&machine->root_dir);
		FUNC11(&machine->mmap_name);
	}
	return 0;
}