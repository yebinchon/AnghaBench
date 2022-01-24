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

/* Variables and functions */
 int /*<<< orphan*/  CATASTROPHIC ; 
 int KDB_ARGCOUNT ; 
 int KDB_BADCPUNUM ; 
 int KDB_CMD_GO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int kdb_continue_catastrophic ; 
 int /*<<< orphan*/  kdb_go_count ; 
 int /*<<< orphan*/  kdb_initial_cpu ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,char const**,int*,unsigned long*,long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(int argc, const char **argv)
{
	unsigned long addr;
	int diag;
	int nextarg;
	long offset;

	if (FUNC4() != kdb_initial_cpu) {
		FUNC1("go must execute on the entry cpu, "
			   "please use \"cpu %d\" and then execute go\n",
			   kdb_initial_cpu);
		return KDB_BADCPUNUM;
	}
	if (argc == 1) {
		nextarg = 1;
		diag = FUNC3(argc, argv, &nextarg,
				     &addr, &offset, NULL);
		if (diag)
			return diag;
	} else if (argc) {
		return KDB_ARGCOUNT;
	}

	diag = KDB_CMD_GO;
	if (FUNC0(CATASTROPHIC)) {
		FUNC1("Catastrophic error detected\n");
		FUNC1("kdb_continue_catastrophic=%d, ",
			kdb_continue_catastrophic);
		if (kdb_continue_catastrophic == 0 && kdb_go_count++ == 0) {
			FUNC1("type go a second time if you really want "
				   "to continue\n");
			return 0;
		}
		if (kdb_continue_catastrophic == 2) {
			FUNC1("forcing reboot\n");
			FUNC2(0, NULL);
		}
		FUNC1("attempting to continue\n");
	}
	return diag;
}