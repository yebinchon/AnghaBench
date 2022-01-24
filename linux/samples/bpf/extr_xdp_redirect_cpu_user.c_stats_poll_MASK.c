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
struct stats_record {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LC_NUMERIC ; 
 struct stats_record* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct stats_record*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct stats_record*) ; 
 int /*<<< orphan*/  FUNC5 (struct stats_record*,struct stats_record*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct stats_record**,struct stats_record**) ; 

__attribute__((used)) static void FUNC8(int interval, bool use_separators, char *prog_name,
		       bool stress_mode)
{
	struct stats_record *record, *prev;

	record = FUNC0();
	prev   = FUNC0();
	FUNC4(record);

	/* Trick to pretty printf with thousands separators use %' */
	if (use_separators)
		FUNC2(LC_NUMERIC, "en_US");

	while (1) {
		FUNC7(&prev, &record);
		FUNC4(record);
		FUNC5(record, prev, prog_name);
		FUNC3(interval);
		if (stress_mode)
			FUNC6();
	}

	FUNC1(record);
	FUNC1(prev);
}