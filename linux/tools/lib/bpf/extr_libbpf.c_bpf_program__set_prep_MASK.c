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
struct TYPE_2__ {int nr; int* fds; } ;
struct bpf_program {scalar_t__ preprocessor; TYPE_1__ instances; } ;
typedef  scalar_t__ bpf_program_prep_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(struct bpf_program *prog, int nr_instances,
			  bpf_program_prep_t prep)
{
	int *instances_fds;

	if (nr_instances <= 0 || !prep)
		return -EINVAL;

	if (prog->instances.nr > 0 || prog->instances.fds) {
		FUNC2("Can't set pre-processor after loading\n");
		return -EINVAL;
	}

	instances_fds = FUNC0(sizeof(int) * nr_instances);
	if (!instances_fds) {
		FUNC2("alloc memory failed for fds\n");
		return -ENOMEM;
	}

	/* fill all fd with -1 */
	FUNC1(instances_fds, -1, sizeof(int) * nr_instances);

	prog->instances.nr = nr_instances;
	prog->instances.fds = instances_fds;
	prog->preprocessor = prep;
	return 0;
}