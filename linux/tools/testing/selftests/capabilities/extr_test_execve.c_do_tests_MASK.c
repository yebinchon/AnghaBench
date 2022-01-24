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
typedef  int uid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAPNG_ADD ; 
 int /*<<< orphan*/  CAPNG_DROP ; 
 int /*<<< orphan*/  CAPNG_EFFECTIVE ; 
 int /*<<< orphan*/  CAPNG_INHERITABLE ; 
 int /*<<< orphan*/  CAPNG_PERMITTED ; 
 int /*<<< orphan*/  CAPNG_SELECT_CAPS ; 
 int /*<<< orphan*/  CAP_NET_BIND_SERVICE ; 
 int /*<<< orphan*/  CAP_NET_RAW ; 
 scalar_t__ EINVAL ; 
 scalar_t__ EPERM ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  PR_CAP_AMBIENT ; 
 int /*<<< orphan*/  PR_CAP_AMBIENT_CLEAR_ALL ; 
 int /*<<< orphan*/  PR_CAP_AMBIENT_IS_SET ; 
 int /*<<< orphan*/  PR_CAP_AMBIENT_RAISE ; 
 int S_ISGID ; 
 int S_ISUID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char*) ; 
 int FUNC7 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int,int) ; 
 scalar_t__ FUNC10 () ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 scalar_t__ nerrs ; 
 int FUNC18 (char const*,int) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int,int,int) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 

__attribute__((used)) static int FUNC22(int uid, const char *our_path)
{
	bool have_outer_privilege = FUNC7(uid);

	int ourpath_fd = FUNC18(our_path, O_RDONLY | O_DIRECTORY);
	if (ourpath_fd == -1)
		FUNC12("open '%s' - %s\n",
					our_path, FUNC21(errno));

	FUNC3();

	FUNC6(ourpath_fd, "validate_cap", "validate_cap");

	if (have_outer_privilege) {
		uid_t gid = FUNC11();

		FUNC6(ourpath_fd, "validate_cap",
			       "validate_cap_suidroot");
		if (FUNC5("validate_cap_suidroot", 0, -1) != 0)
			FUNC12("chown - %s\n", FUNC21(errno));
		if (FUNC4("validate_cap_suidroot", S_ISUID | 0700) != 0)
			FUNC12("chmod - %s\n", FUNC21(errno));

		FUNC6(ourpath_fd, "validate_cap",
			       "validate_cap_suidnonroot");
		if (FUNC5("validate_cap_suidnonroot", uid + 1, -1) != 0)
			FUNC12("chown - %s\n", FUNC21(errno));
		if (FUNC4("validate_cap_suidnonroot", S_ISUID | 0700) != 0)
			FUNC12("chmod - %s\n", FUNC21(errno));

		FUNC6(ourpath_fd, "validate_cap",
			       "validate_cap_sgidroot");
		if (FUNC5("validate_cap_sgidroot", -1, 0) != 0)
			FUNC12("chown - %s\n", FUNC21(errno));
		if (FUNC4("validate_cap_sgidroot", S_ISGID | 0710) != 0)
			FUNC12("chmod - %s\n", FUNC21(errno));

		FUNC6(ourpath_fd, "validate_cap",
			       "validate_cap_sgidnonroot");
		if (FUNC5("validate_cap_sgidnonroot", -1, gid + 1) != 0)
			FUNC12("chown - %s\n", FUNC21(errno));
		if (FUNC4("validate_cap_sgidnonroot", S_ISGID | 0710) != 0)
			FUNC12("chmod - %s\n", FUNC21(errno));
	}

	FUNC1();

	/* Make sure that i starts out clear */
	FUNC2(CAPNG_DROP, CAPNG_INHERITABLE, CAP_NET_BIND_SERVICE);
	if (FUNC0(CAPNG_SELECT_CAPS) != 0)
		FUNC12("capng_apply - %s\n", FUNC21(errno));

	if (uid == 0) {
		FUNC14("[RUN]\tRoot => ep\n");
		if (FUNC10())
			FUNC9(true, true, false, false);
	} else {
		FUNC14("[RUN]\tNon-root => no caps\n");
		if (FUNC10())
			FUNC9(false, false, false, false);
	}

	FUNC14("Check cap_ambient manipulation rules\n");

	/* We should not be able to add ambient caps yet. */
	if (FUNC19(PR_CAP_AMBIENT, PR_CAP_AMBIENT_RAISE, CAP_NET_BIND_SERVICE, 0, 0, 0) != -1 || errno != EPERM) {
		if (errno == EINVAL)
			FUNC15(
				"PR_CAP_AMBIENT_RAISE isn't supported\n");
		else
			FUNC15(
				"PR_CAP_AMBIENT_RAISE should have failed eith EPERM on a non-inheritable cap\n");
		return 1;
	}
	FUNC16(
		"PR_CAP_AMBIENT_RAISE failed on non-inheritable cap\n");

	FUNC2(CAPNG_ADD, CAPNG_INHERITABLE, CAP_NET_RAW);
	FUNC2(CAPNG_DROP, CAPNG_PERMITTED, CAP_NET_RAW);
	FUNC2(CAPNG_DROP, CAPNG_EFFECTIVE, CAP_NET_RAW);
	if (FUNC0(CAPNG_SELECT_CAPS) != 0)
		FUNC12("capng_apply - %s\n", FUNC21(errno));
	if (FUNC19(PR_CAP_AMBIENT, PR_CAP_AMBIENT_RAISE, CAP_NET_RAW, 0, 0, 0) != -1 || errno != EPERM) {
		FUNC15(
			"PR_CAP_AMBIENT_RAISE should have failed on a non-permitted cap\n");
		return 1;
	}
	FUNC16(
		"PR_CAP_AMBIENT_RAISE failed on non-permitted cap\n");

	FUNC2(CAPNG_ADD, CAPNG_INHERITABLE, CAP_NET_BIND_SERVICE);
	if (FUNC0(CAPNG_SELECT_CAPS) != 0)
		FUNC12("capng_apply - %s\n", FUNC21(errno));
	if (FUNC19(PR_CAP_AMBIENT, PR_CAP_AMBIENT_RAISE, CAP_NET_BIND_SERVICE, 0, 0, 0) != 0) {
		FUNC15(
			"PR_CAP_AMBIENT_RAISE should have succeeded\n");
		return 1;
	}
	FUNC16("PR_CAP_AMBIENT_RAISE worked\n");

	if (FUNC19(PR_CAP_AMBIENT, PR_CAP_AMBIENT_IS_SET, CAP_NET_BIND_SERVICE, 0, 0, 0) != 1) {
		FUNC15("PR_CAP_AMBIENT_IS_SET is broken\n");
		return 1;
	}

	if (FUNC19(PR_CAP_AMBIENT, PR_CAP_AMBIENT_CLEAR_ALL, 0, 0, 0, 0) != 0)
		FUNC12("PR_CAP_AMBIENT_CLEAR_ALL - %s\n",
					FUNC21(errno));

	if (FUNC19(PR_CAP_AMBIENT, PR_CAP_AMBIENT_IS_SET, CAP_NET_BIND_SERVICE, 0, 0, 0) != 0) {
		FUNC15(
			"PR_CAP_AMBIENT_CLEAR_ALL didn't work\n");
		return 1;
	}

	if (FUNC19(PR_CAP_AMBIENT, PR_CAP_AMBIENT_RAISE, CAP_NET_BIND_SERVICE, 0, 0, 0) != 0)
		FUNC12("PR_CAP_AMBIENT_RAISE - %s\n",
					FUNC21(errno));

	FUNC2(CAPNG_DROP, CAPNG_INHERITABLE, CAP_NET_BIND_SERVICE);
	if (FUNC0(CAPNG_SELECT_CAPS) != 0)
		FUNC12("capng_apply - %s\n", FUNC21(errno));

	if (FUNC19(PR_CAP_AMBIENT, PR_CAP_AMBIENT_IS_SET, CAP_NET_BIND_SERVICE, 0, 0, 0) != 0) {
		FUNC15("Dropping I should have dropped A\n");
		return 1;
	}

	FUNC16("Basic manipulation appears to work\n");

	FUNC2(CAPNG_ADD, CAPNG_INHERITABLE, CAP_NET_BIND_SERVICE);
	if (FUNC0(CAPNG_SELECT_CAPS) != 0)
		FUNC12("capng_apply - %s\n", FUNC21(errno));
	if (uid == 0) {
		FUNC14("[RUN]\tRoot +i => eip\n");
		if (FUNC10())
			FUNC9(true, true, true, false);
	} else {
		FUNC14("[RUN]\tNon-root +i => i\n");
		if (FUNC10())
			FUNC9(false, false, true, false);
	}

	if (FUNC19(PR_CAP_AMBIENT, PR_CAP_AMBIENT_RAISE, CAP_NET_BIND_SERVICE, 0, 0, 0) != 0)
		FUNC12("PR_CAP_AMBIENT_RAISE - %s\n",
					FUNC21(errno));

	FUNC14("[RUN]\tUID %d +ia => eipa\n", uid);
	if (FUNC10())
		FUNC9(true, true, true, true);

	/* The remaining tests need real privilege */

	if (!have_outer_privilege) {
		FUNC17("SUID/SGID tests (needs privilege)\n");
		goto done;
	}

	if (uid == 0) {
		FUNC14("[RUN]\tRoot +ia, suidroot => eipa\n");
		if (FUNC10())
			FUNC8("./validate_cap_suidroot",
						true, true, true, true);

		FUNC14("[RUN]\tRoot +ia, suidnonroot => ip\n");
		if (FUNC10())
			FUNC8("./validate_cap_suidnonroot",
						false, true, true, false);

		FUNC14("[RUN]\tRoot +ia, sgidroot => eipa\n");
		if (FUNC10())
			FUNC8("./validate_cap_sgidroot",
						true, true, true, true);

		if (FUNC10()) {
			FUNC14(
				"[RUN]\tRoot, gid != 0, +ia, sgidroot => eip\n");
			if (FUNC20(1, 1, 1) != 0)
				FUNC12("setresgid - %s\n",
							FUNC21(errno));
			FUNC8("./validate_cap_sgidroot",
						true, true, true, false);
		}

		FUNC14("[RUN]\tRoot +ia, sgidnonroot => eip\n");
		if (FUNC10())
			FUNC8("./validate_cap_sgidnonroot",
						true, true, true, false);
	} else {
		FUNC14("[RUN]\tNon-root +ia, sgidnonroot => i\n");
		if (FUNC10())
			FUNC8("./validate_cap_sgidnonroot",
					false, false, true, false);

		if (FUNC10()) {
			FUNC14("[RUN]\tNon-root +ia, sgidroot => i\n");
			if (FUNC20(1, 1, 1) != 0)
				FUNC12("setresgid - %s\n",
							FUNC21(errno));
			FUNC8("./validate_cap_sgidroot",
						false, false, true, false);
		}
	}

done:
	FUNC13();
	return nerrs ? 1 : 0;
}