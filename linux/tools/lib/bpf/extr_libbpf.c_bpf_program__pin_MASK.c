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
 int /*<<< orphan*/  FUNC1 (struct bpf_program*,char*,int) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int FUNC6 (char*,int,char*,char const*,int) ; 

int FUNC7(struct bpf_program *prog, const char *path)
{
	int i, err;

	err = FUNC2(path);
	if (err)
		return err;

	if (prog == NULL) {
		FUNC4("invalid program pointer\n");
		return -EINVAL;
	}

	if (prog->instances.nr <= 0) {
		FUNC4("no instances of prog %s to pin\n",
			   prog->section_name);
		return -EINVAL;
	}

	if (prog->instances.nr == 1) {
		/* don't create subdirs when pinning single instance */
		return FUNC0(prog, path, 0);
	}

	err = FUNC3(path);
	if (err)
		return err;

	for (i = 0; i < prog->instances.nr; i++) {
		char buf[PATH_MAX];
		int len;

		len = FUNC6(buf, PATH_MAX, "%s/%d", path, i);
		if (len < 0) {
			err = -EINVAL;
			goto err_unpin;
		} else if (len >= PATH_MAX) {
			err = -ENAMETOOLONG;
			goto err_unpin;
		}

		err = FUNC0(prog, buf, i);
		if (err)
			goto err_unpin;
	}

	return 0;

err_unpin:
	for (i = i - 1; i >= 0; i--) {
		char buf[PATH_MAX];
		int len;

		len = FUNC6(buf, PATH_MAX, "%s/%d", path, i);
		if (len < 0)
			continue;
		else if (len >= PATH_MAX)
			continue;

		FUNC1(prog, buf, i);
	}

	FUNC5(path);

	return err;
}