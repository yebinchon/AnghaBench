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
 scalar_t__ cpu_selected_set ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int max_pkg_num ; 
 int pkg_present_set ; 
 int pkg_selected_set ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(char *s)
{
	char *startp, *endp;
	int pkg = 0;

	if (cpu_selected_set) {
		FUNC3();
		FUNC0(1, "--pkg | --cpu");
	}
	pkg_selected_set = 0;

	for (startp = s; startp && *startp;) {

		if (*startp == ',') {
			startp++;
			continue;
		}

		if (*startp == '-') {
			int end_pkg;

			startp++;
			end_pkg = FUNC2(startp, &endp, 10);
			if (startp == endp)
				continue;

			while (pkg <= end_pkg) {
				if (pkg > max_pkg_num)
					FUNC0(1, "Requested pkg%d exceeds max pkg%d", pkg, max_pkg_num);
				pkg_selected_set |= 1 << pkg;
				pkg++;
			}
			startp = endp;
			continue;
		}

		if (FUNC1(startp, "all", 3) == 0) {
			pkg_selected_set = pkg_present_set;
			return;
		}

		pkg = FUNC2(startp, &endp, 10);
		if (pkg > max_pkg_num)
			FUNC0(1, "Requested pkg%d Exceeds max pkg%d", pkg, max_pkg_num);
		pkg_selected_set |= 1 << pkg;
		startp = endp;
	}
}