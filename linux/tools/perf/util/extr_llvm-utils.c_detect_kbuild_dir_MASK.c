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
typedef  int /*<<< orphan*/  release ;
struct TYPE_2__ {char* kbuild_dir; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  R_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char**,char*,char const*,char const*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__ llvm_param ; 

__attribute__((used)) static int FUNC4(char **kbuild_dir)
{
	const char *test_dir = llvm_param.kbuild_dir;
	const char *prefix_dir = "";
	const char *suffix_dir = "";

	/* _UTSNAME_LENGTH is 65 */
	char release[128];

	char *autoconf_path;

	int err;

	if (!test_dir) {
		err = FUNC2(NULL, release,
					   sizeof(release));
		if (err)
			return -EINVAL;

		test_dir = release;
		prefix_dir = "/lib/modules/";
		suffix_dir = "/build";
	}

	err = FUNC1(&autoconf_path, "%s%s%s/include/generated/autoconf.h",
		       prefix_dir, test_dir, suffix_dir);
	if (err < 0)
		return -ENOMEM;

	if (FUNC0(autoconf_path, R_OK) == 0) {
		FUNC3(autoconf_path);

		err = FUNC1(kbuild_dir, "%s%s%s", prefix_dir, test_dir,
			       suffix_dir);
		if (err < 0)
			return -ENOMEM;
		return 0;
	}
	FUNC3(autoconf_path);
	return -ENOENT;
}