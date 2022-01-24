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
struct TYPE_2__ {char* kbuild_opts; int /*<<< orphan*/ * kbuild_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  kinc_fetch_script ; 
 TYPE_1__ llvm_param ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char**) ; 

void FUNC9(char **kbuild_dir, char **kbuild_include_opts)
{
	static char *saved_kbuild_dir;
	static char *saved_kbuild_include_opts;
	int err;

	if (!kbuild_dir || !kbuild_include_opts)
		return;

	*kbuild_dir = NULL;
	*kbuild_include_opts = NULL;

	if (saved_kbuild_dir && saved_kbuild_include_opts &&
	    !FUNC1(saved_kbuild_dir) && !FUNC1(saved_kbuild_include_opts)) {
		*kbuild_dir = FUNC7(saved_kbuild_dir);
		*kbuild_include_opts = FUNC7(saved_kbuild_include_opts);

		if (*kbuild_dir && *kbuild_include_opts)
			return;

		FUNC8(kbuild_dir);
		FUNC8(kbuild_include_opts);
		/*
		 * Don't fall through: it may breaks saved_kbuild_dir and
		 * saved_kbuild_include_opts if detect them again when
		 * memory is low.
		 */
		return;
	}

	if (llvm_param.kbuild_dir && !llvm_param.kbuild_dir[0]) {
		FUNC4("[llvm.kbuild-dir] is set to \"\" deliberately.\n");
		FUNC4("Skip kbuild options detection.\n");
		goto errout;
	}

	err = FUNC2(kbuild_dir);
	if (err) {
		FUNC5(
"WARNING:\tunable to get correct kernel building directory.\n"
"Hint:\tSet correct kbuild directory using 'kbuild-dir' option in [llvm]\n"
"     \tsection of ~/.perfconfig or set it to \"\" to suppress kbuild\n"
"     \tdetection.\n\n");
		goto errout;
	}

	FUNC4("Kernel build dir is set to %s\n", *kbuild_dir);
	FUNC3("KBUILD_DIR", *kbuild_dir);
	FUNC3("KBUILD_OPTS", llvm_param.kbuild_opts);
	err = FUNC6(kinc_fetch_script,
			     (void **)kbuild_include_opts,
			     NULL);
	if (err) {
		FUNC5(
"WARNING:\tunable to get kernel include directories from '%s'\n"
"Hint:\tTry set clang include options using 'clang-bpf-cmd-template'\n"
"     \toption in [llvm] section of ~/.perfconfig and set 'kbuild-dir'\n"
"     \toption in [llvm] to \"\" to suppress this detection.\n\n",
			*kbuild_dir);

		FUNC8(kbuild_dir);
		goto errout;
	}

	FUNC4("include option is set to %s\n", *kbuild_include_opts);

	saved_kbuild_dir = FUNC7(*kbuild_dir);
	saved_kbuild_include_opts = FUNC7(*kbuild_include_opts);

	if (!saved_kbuild_dir || !saved_kbuild_include_opts) {
		FUNC8(&saved_kbuild_dir);
		FUNC8(&saved_kbuild_include_opts);
	}
	return;
errout:
	saved_kbuild_dir = FUNC0(-EINVAL);
	saved_kbuild_include_opts = FUNC0(-EINVAL);
}