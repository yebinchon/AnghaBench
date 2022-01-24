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
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int stutter ; 
 int stutter_gap ; 
 int /*<<< orphan*/  stutter_pause_test ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(void *arg)
{
	int wtime;

	FUNC0("torture_stutter task started");
	do {
		if (!FUNC4() && stutter > 1) {
			wtime = stutter;
			if (stutter > HZ + 1) {
				FUNC1(stutter_pause_test, 1);
				wtime = stutter - HZ - 1;
				FUNC2(wtime);
				wtime = HZ + 1;
			}
			FUNC1(stutter_pause_test, 2);
			FUNC2(wtime);
		}
		FUNC1(stutter_pause_test, 0);
		if (!FUNC4())
			FUNC2(stutter_gap);
		FUNC5("torture_stutter");
	} while (!FUNC4());
	FUNC3("torture_stutter");
	return 0;
}