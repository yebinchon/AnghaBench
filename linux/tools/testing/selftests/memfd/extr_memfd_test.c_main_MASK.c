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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int CLONE_FILES ; 
 int CLONE_FS ; 
 int CLONE_VM ; 
 int /*<<< orphan*/  MEMFD_HUGE_STR ; 
 char* SHARED_FT_STR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 () ; 
 int hugetlbfs_test ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memfd_str ; 
 unsigned long mfd_def_size ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 

int FUNC17(int argc, char **argv)
{
	pid_t pid;

	if (argc == 2) {
		if (!FUNC5(argv[1], "hugetlbfs")) {
			unsigned long hpage_size = FUNC1();

			if (!hpage_size) {
				FUNC3("Unable to determine huge page size\n");
				FUNC0();
			}

			hugetlbfs_test = 1;
			memfd_str = MEMFD_HUGE_STR;
			mfd_def_size = hpage_size * 2;
		} else {
			FUNC3("Unknown option: %s\n", argv[1]);
			FUNC0();
		}
	}

	FUNC7();
	FUNC6();

	FUNC12();
	FUNC8();
	FUNC11();
	FUNC9();
	FUNC10();

	FUNC13("SHARE-DUP", "");
	FUNC15("SHARE-MMAP", "");
	FUNC16("SHARE-OPEN", "");
	FUNC14("SHARE-FORK", "");

	/* Run test-suite in a multi-threaded environment with a shared
	 * file-table. */
	pid = FUNC4(CLONE_FILES | CLONE_FS | CLONE_VM);
	FUNC13("SHARE-DUP", SHARED_FT_STR);
	FUNC15("SHARE-MMAP", SHARED_FT_STR);
	FUNC16("SHARE-OPEN", SHARED_FT_STR);
	FUNC14("SHARE-FORK", SHARED_FT_STR);
	FUNC2(pid);

	FUNC3("memfd: DONE\n");

	return 0;
}