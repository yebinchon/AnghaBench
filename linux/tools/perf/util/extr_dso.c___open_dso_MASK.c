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
struct machine {char* root_dir; } ;
struct dso {int load_errno; int /*<<< orphan*/  binary_type; } ;
typedef  int /*<<< orphan*/  newpath ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int KMOD_DECOMP_LEN ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct dso*,char*,char*,size_t) ; 
 scalar_t__ FUNC2 (struct dso*) ; 
 scalar_t__ FUNC3 (struct dso*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct dso *dso, struct machine *machine)
{
	int fd = -EINVAL;
	char *root_dir = (char *)"";
	char *name = FUNC6(PATH_MAX);
	bool decomp = false;

	if (!name)
		return -ENOMEM;

	if (machine)
		root_dir = machine->root_dir;

	if (FUNC3(dso, dso->binary_type,
					    root_dir, name, PATH_MAX))
		goto out;

	if (!FUNC5(name))
		goto out;

	if (FUNC2(dso)) {
		char newpath[KMOD_DECOMP_LEN];
		size_t len = sizeof(newpath);

		if (FUNC1(dso, name, newpath, len) < 0) {
			fd = -dso->load_errno;
			goto out;
		}

		decomp = true;
		FUNC7(name, newpath);
	}

	fd = FUNC0(name);

	if (decomp)
		FUNC8(name);

out:
	FUNC4(name);
	return fd;
}