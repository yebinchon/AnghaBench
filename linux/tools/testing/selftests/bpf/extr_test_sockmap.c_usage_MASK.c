#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; int* flag; int val; } ;

/* Variables and functions */
 TYPE_1__* long_options ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(char *argv[])
{
	int i;

	FUNC0(" Usage: %s --cgroup <cgroup_path>\n", argv[0]);
	FUNC0(" options:\n");
	for (i = 0; long_options[i].name != 0; i++) {
		FUNC0(" --%-12s", long_options[i].name);
		if (long_options[i].flag != NULL)
			FUNC0(" flag (internal value:%d)\n",
				*long_options[i].flag);
		else
			FUNC0(" -%c\n", long_options[i].val);
	}
	FUNC0("\n");
}