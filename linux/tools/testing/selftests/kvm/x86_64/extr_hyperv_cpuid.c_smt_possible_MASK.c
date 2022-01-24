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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int FUNC4(void)
{
	char buf[16];
	FILE *f;
	bool res = 1;

	f = FUNC1("/sys/devices/system/cpu/smt/control", "r");
	if (f) {
		if (FUNC2(buf, sizeof(*buf), sizeof(buf), f) > 0) {
			if (!FUNC3(buf, "forceoff", 8) ||
			    !FUNC3(buf, "notsupported", 12))
				res = 0;
		}
		FUNC0(f);
	}

	return res;
}