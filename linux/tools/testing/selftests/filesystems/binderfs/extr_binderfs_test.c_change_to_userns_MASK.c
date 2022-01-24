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
typedef  int /*<<< orphan*/  idmap ;
typedef  int gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLONE_NEWUSER ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void)
{
	int ret;
	uid_t uid;
	gid_t gid;
	/* {g,u}id_map files only allow a max of 4096 bytes written to them */
	char idmap[4096];

	uid = FUNC1();
	gid = FUNC0();

	ret = FUNC8(CLONE_NEWUSER);
	if (ret < 0)
		FUNC2("%s - Failed to unshare user namespace\n",
				   FUNC6(errno));

	FUNC9("/proc/self/setgroups", "deny", FUNC7("deny"), ENOENT);

	ret = FUNC5(idmap, sizeof(idmap), "0 %d 1", uid);
	if (ret < 0 || (size_t)ret >= sizeof(idmap))
		FUNC2("%s - Failed to prepare uid mapping\n",
				   FUNC6(errno));

	FUNC9("/proc/self/uid_map", idmap, FUNC7(idmap), 0);

	ret = FUNC5(idmap, sizeof(idmap), "0 %d 1", gid);
	if (ret < 0 || (size_t)ret >= sizeof(idmap))
		FUNC2("%s - Failed to prepare uid mapping\n",
				   FUNC6(errno));

	FUNC9("/proc/self/gid_map", idmap, FUNC7(idmap), 0);

	ret = FUNC3(0);
	if (ret)
		FUNC2("%s - Failed to setgid(0)\n",
				   FUNC6(errno));

	ret = FUNC4(0);
	if (ret)
		FUNC2("%s - Failed to setgid(0)\n",
				   FUNC6(errno));
}