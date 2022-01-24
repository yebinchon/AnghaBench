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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

void FUNC2(char *tmp, int num)
{
	/* fix up cpuidle name for intel idle driver */
	if (!FUNC1(tmp, "NHM-", 4)) {
		switch (num) {
		case 1:
			FUNC0(tmp, "C1");
			break;
		case 2:
			FUNC0(tmp, "C3");
			break;
		case 3:
			FUNC0(tmp, "C6");
			break;
		}
	} else if (!FUNC1(tmp, "SNB-", 4)) {
		switch (num) {
		case 1:
			FUNC0(tmp, "C1");
			break;
		case 2:
			FUNC0(tmp, "C3");
			break;
		case 3:
			FUNC0(tmp, "C6");
			break;
		case 4:
			FUNC0(tmp, "C7");
			break;
		}
	} else if (!FUNC1(tmp, "ATM-", 4)) {
		switch (num) {
		case 1:
			FUNC0(tmp, "C1");
			break;
		case 2:
			FUNC0(tmp, "C2");
			break;
		case 3:
			FUNC0(tmp, "C4");
			break;
		case 4:
			FUNC0(tmp, "C6");
			break;
		}
	}
}