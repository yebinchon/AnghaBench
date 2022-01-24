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
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 struct stats_record* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct stats_record*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct stats_record*) ; 
 int /*<<< orphan*/  FUNC4 (struct stats_record*,struct stats_record*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct stats_record**,struct stats_record**) ; 

__attribute__((used)) static void FUNC6(int interval, int action, __u32 cfg_opt)
{
	struct stats_record *record, *prev;

	record = FUNC0();
	prev   = FUNC0();
	FUNC3(record);

	while (1) {
		FUNC5(&prev, &record);
		FUNC3(record);
		FUNC4(record, prev, action, cfg_opt);
		FUNC2(interval);
	}

	FUNC1(record);
	FUNC1(prev);
}