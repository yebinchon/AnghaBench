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
struct TYPE_2__ {int nr; } ;
struct bpf_program {TYPE_1__ instances; int /*<<< orphan*/  section_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (char const*) ; 

int FUNC4(struct bpf_program *prog, const char *path,
				int instance)
{
	int err;

	err = FUNC0(path);
	if (err)
		return err;

	if (prog == NULL) {
		FUNC2("invalid program pointer\n");
		return -EINVAL;
	}

	if (instance < 0 || instance >= prog->instances.nr) {
		FUNC2("invalid prog instance %d of prog %s (max %d)\n",
			   instance, prog->section_name, prog->instances.nr);
		return -EINVAL;
	}

	err = FUNC3(path);
	if (err != 0)
		return -errno;
	FUNC1("unpinned program '%s'\n", path);

	return 0;
}