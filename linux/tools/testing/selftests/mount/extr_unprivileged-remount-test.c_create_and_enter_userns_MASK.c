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
 int /*<<< orphan*/  CLONE_NEWUSER ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void)
{
	uid_t uid;
	gid_t gid;

	uid = FUNC2();
	gid = FUNC1();

	if (FUNC7(CLONE_NEWUSER) !=0) {
		FUNC0("unshare(CLONE_NEWUSER) failed: %s\n",
			FUNC6(errno));
	}

	FUNC3("/proc/self/setgroups", "deny");
	FUNC8("/proc/self/uid_map", "0 %d 1", uid);
	FUNC8("/proc/self/gid_map", "0 %d 1", gid);

	if (FUNC4(0) != 0) {
		FUNC0 ("setgid(0) failed %s\n",
			FUNC6(errno));
	}
	if (FUNC5(0) != 0) {
		FUNC0("setuid(0) failed %s\n",
			FUNC6(errno));
	}
}