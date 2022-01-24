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
 int ENAMETOOLONG ; 
 int PATH_MAX ; 
 int FUNC0 (struct bpf_program*,char const*,int) ; 
 int FUNC1 (char const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char*,int,char*,char const*,int) ; 

int FUNC5(struct bpf_program *prog, const char *path)
{
	int i, err;

	err = FUNC1(path);
	if (err)
		return err;

	if (prog == NULL) {
		FUNC2("invalid program pointer\n");
		return -EINVAL;
	}

	if (prog->instances.nr <= 0) {
		FUNC2("no instances of prog %s to pin\n",
			   prog->section_name);
		return -EINVAL;
	}

	if (prog->instances.nr == 1) {
		/* don't create subdirs when pinning single instance */
		return FUNC0(prog, path, 0);
	}

	for (i = 0; i < prog->instances.nr; i++) {
		char buf[PATH_MAX];
		int len;

		len = FUNC4(buf, PATH_MAX, "%s/%d", path, i);
		if (len < 0)
			return -EINVAL;
		else if (len >= PATH_MAX)
			return -ENAMETOOLONG;

		err = FUNC0(prog, buf, i);
		if (err)
			return err;
	}

	err = FUNC3(path);
	if (err)
		return -errno;

	return 0;
}