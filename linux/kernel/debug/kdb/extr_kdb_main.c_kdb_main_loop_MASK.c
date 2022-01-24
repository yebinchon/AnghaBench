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
struct pt_regs {int dummy; } ;
typedef  int kdb_reason_t ;
typedef  int /*<<< orphan*/  kdb_dbtrap_t ;

/* Variables and functions */
 int /*<<< orphan*/  DOING_KGDB ; 
 int /*<<< orphan*/  DOING_SS ; 
 int /*<<< orphan*/  HOLD_CPU ; 
 int /*<<< orphan*/  KDB ; 
 int KDB_CMD_CPU ; 
 int KDB_CMD_GO ; 
 int KDB_CMD_KGDB ; 
 int KDB_CMD_SS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LEAVING ; 
 int /*<<< orphan*/  SSBPT ; 
 int /*<<< orphan*/  SUPPRESS ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int,int,struct pt_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

int FUNC7(kdb_reason_t reason, kdb_reason_t reason2, int error,
	      kdb_dbtrap_t db_result, struct pt_regs *regs)
{
	int result = 1;
	/* Stay in kdb() until 'go', 'ss[b]' or an error */
	while (1) {
		/*
		 * All processors except the one that is in control
		 * will spin here.
		 */
		FUNC0("kdb_main_loop 1", reason);
		while (FUNC1(HOLD_CPU)) {
			/* state KDB is turned off by kdb_cpu to see if the
			 * other cpus are still live, each cpu in this loop
			 * turns it back on.
			 */
			if (!FUNC1(KDB))
				FUNC3(KDB);
		}

		FUNC2(SUPPRESS);
		FUNC0("kdb_main_loop 2", reason);
		if (FUNC1(LEAVING))
			break;	/* Another cpu said 'go' */
		/* Still using kdb, this processor is in control */
		result = FUNC5(reason2, error, regs, db_result);
		FUNC0("kdb_main_loop 3", result);

		if (result == KDB_CMD_CPU)
			break;

		if (result == KDB_CMD_SS) {
			FUNC3(DOING_SS);
			break;
		}

		if (result == KDB_CMD_KGDB) {
			if (!FUNC1(DOING_KGDB))
				FUNC6("Entering please attach debugger "
					   "or use $D#44+ or $3#33\n");
			break;
		}
		if (result && result != 1 && result != KDB_CMD_GO)
			FUNC6("\nUnexpected kdb_local return code %d\n",
				   result);
		FUNC0("kdb_main_loop 4", reason);
		break;
	}
	if (FUNC1(DOING_SS))
		FUNC2(SSBPT);

	/* Clean up any keyboard devices before leaving */
	FUNC4();

	return result;
}