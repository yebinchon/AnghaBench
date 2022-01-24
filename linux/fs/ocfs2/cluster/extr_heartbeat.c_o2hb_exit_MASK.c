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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  o2hb_db_failedregions ; 
 int /*<<< orphan*/  o2hb_db_livenodes ; 
 int /*<<< orphan*/  o2hb_db_liveregions ; 
 int /*<<< orphan*/  o2hb_db_quorumregions ; 
 int /*<<< orphan*/  o2hb_debug_dir ; 

void FUNC2(void)
{
	FUNC0(o2hb_debug_dir);
	FUNC1(o2hb_db_livenodes);
	FUNC1(o2hb_db_liveregions);
	FUNC1(o2hb_db_quorumregions);
	FUNC1(o2hb_db_failedregions);
}