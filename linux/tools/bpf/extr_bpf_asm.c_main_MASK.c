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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

int FUNC3(int argc, char **argv)
{
	FILE *fp = stdin;
	bool cstyle = false;
	int i;

	for (i = 1; i < argc; i++) {
		if (!FUNC2("-c", argv[i], 2)) {
			cstyle = true;
			continue;
		}

		fp = FUNC1(argv[i], "r");
		if (!fp) {
			fp = stdin;
			continue;
		}

		break;
	}

	FUNC0(fp, cstyle);

	return 0;
}