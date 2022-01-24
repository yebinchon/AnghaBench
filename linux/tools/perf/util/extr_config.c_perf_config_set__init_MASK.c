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
struct stat {scalar_t__ st_uid; scalar_t__ st_size; } ;
struct perf_config_set {int dummy; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  R_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  collect_config ; 
 char* config_exclusive_filename ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,struct perf_config_set*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 char* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 scalar_t__ FUNC10 (char*,struct stat*) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct perf_config_set *set)
{
	int ret = -1;
	const char *home = NULL;
	char *user_config;
	struct stat st;

	/* Setting $PERF_CONFIG makes perf read _only_ the given config file. */
	if (config_exclusive_filename)
		return FUNC5(collect_config, config_exclusive_filename, set);
	if (FUNC7() && !FUNC0(FUNC8(), R_OK)) {
		if (FUNC5(collect_config, FUNC8(), set) < 0)
			goto out;
	}

	home = FUNC2("HOME");

	/*
	 * Skip reading user config if:
	 *   - there is no place to read it from (HOME)
	 *   - we are asked not to (PERF_CONFIG_NOGLOBAL=1)
	 */
	if (!home || !*home || !FUNC6())
		return 0;

	user_config = FUNC11(FUNC4("%s/.perfconfig", home));
	if (user_config == NULL) {
		FUNC9("Not enough memory to process %s/.perfconfig, ignoring it.", home);
		goto out;
	}

	if (FUNC10(user_config, &st) < 0) {
		if (errno == ENOENT)
			ret = 0;
		goto out_free;
	}

	ret = 0;

	if (st.st_uid && (st.st_uid != FUNC3())) {
		FUNC9("File %s not owned by current user or root, ignoring it.", user_config);
		goto out_free;
	}

	if (st.st_size)
		ret = FUNC5(collect_config, user_config, set);

out_free:
	FUNC1(user_config);
out:
	return ret;
}