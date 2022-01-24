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
struct bpf_program {TYPE_1__ instances; int /*<<< orphan*/  section_name; } ;
typedef  int /*<<< orphan*/  errmsg ;

/* Variables and functions */
 int EINVAL ; 
 int STRERR_BUFSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (char const*) ; 
 int errno ; 
 char* FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int FUNC5(struct bpf_program *prog, const char *path,
			      int instance)
{
	char *cp, errmsg[STRERR_BUFSIZE];
	int err;

	err = FUNC1(path);
	if (err)
		return err;

	if (prog == NULL) {
		FUNC4("invalid program pointer\n");
		return -EINVAL;
	}

	if (instance < 0 || instance >= prog->instances.nr) {
		FUNC4("invalid prog instance %d of prog %s (max %d)\n",
			   instance, prog->section_name, prog->instances.nr);
		return -EINVAL;
	}

	if (FUNC0(prog->instances.fds[instance], path)) {
		cp = FUNC2(errno, errmsg, sizeof(errmsg));
		FUNC4("failed to pin program: %s\n", cp);
		return -errno;
	}
	FUNC3("pinned program '%s'\n", path);

	return 0;
}