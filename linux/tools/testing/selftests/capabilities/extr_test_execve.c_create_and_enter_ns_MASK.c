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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAPNG_ADD ; 
 int /*<<< orphan*/  CAPNG_EFFECTIVE ; 
 int /*<<< orphan*/  CAPNG_PERMITTED ; 
 int /*<<< orphan*/  CAPNG_SELECT_CAPS ; 
 int CAP_LAST_CAP ; 
 int CLONE_NEWNS ; 
 int CLONE_NEWUSER ; 
 int MS_PRIVATE ; 
 int MS_REC ; 
 int /*<<< orphan*/  PR_SET_KEEPCAPS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char*,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static bool FUNC16(uid_t inner_uid)
{
	uid_t outer_uid;
	gid_t outer_gid;
	int i;
	bool have_outer_privilege;

	outer_uid = FUNC5();
	outer_gid = FUNC4();

	/*
	 * TODO: If we're already root, we could skip creating the userns.
	 */

	if (FUNC14(CLONE_NEWNS) == 0) {
		FUNC8("[NOTE]\tUsing global UIDs for tests\n");
		if (FUNC11(PR_SET_KEEPCAPS, 1, 0, 0, 0) != 0)
			FUNC6("PR_SET_KEEPCAPS - %s\n",
						FUNC13(errno));
		if (FUNC12(inner_uid, inner_uid, -1) != 0)
			FUNC6("setresuid - %s\n", FUNC13(errno));

		// Re-enable effective caps
		FUNC1();
		for (i = 0; i < CAP_LAST_CAP; i++)
			if (FUNC2(CAPNG_PERMITTED, i))
				FUNC3(CAPNG_ADD, CAPNG_EFFECTIVE, i);
		if (FUNC0(CAPNG_SELECT_CAPS) != 0)
			FUNC6(
					"capng_apply - %s\n", FUNC13(errno));

		have_outer_privilege = true;
	} else if (FUNC14(CLONE_NEWUSER | CLONE_NEWNS) == 0) {
		FUNC8("[NOTE]\tUsing a user namespace for tests\n");
		FUNC9("/proc/self/setgroups", "deny");
		FUNC15("/proc/self/uid_map", "%d %d 1", inner_uid, outer_uid);
		FUNC15("/proc/self/gid_map", "0 %d 1", outer_gid);

		have_outer_privilege = false;
	} else {
		FUNC7("must be root or be able to create a userns\n");
	}

	if (FUNC10("none", "/", NULL, MS_REC | MS_PRIVATE, NULL) != 0)
		FUNC6("remount everything private - %s\n",
					FUNC13(errno));

	return have_outer_privilege;
}