#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  bp_installed; int /*<<< orphan*/  bp_type; int /*<<< orphan*/  bp_addr; scalar_t__ bp_enabled; } ;
typedef  TYPE_1__ kdb_bp_t ;

/* Variables and functions */
 int /*<<< orphan*/  KDB_SP_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(kdb_bp_t *bp, int i)
{
	FUNC1("%s ", FUNC0(bp));
	FUNC1("BP #%d at ", i);
	FUNC2(bp->bp_addr, NULL, KDB_SP_DEFAULT);

	if (bp->bp_enabled)
		FUNC1("\n    is enabled ");
	else
		FUNC1("\n    is disabled");

	FUNC1("  addr at %016lx, hardtype=%d installed=%d\n",
		   bp->bp_addr, bp->bp_type, bp->bp_installed);

	FUNC1("\n");
}