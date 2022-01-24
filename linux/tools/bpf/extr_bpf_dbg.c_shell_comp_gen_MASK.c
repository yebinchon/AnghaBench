#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* cmds ; 
 char* FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*,int) ; 

__attribute__((used)) static char *FUNC4(const char *buf, int state)
{
	static int list_index, len;

	if (!state) {
		list_index = 0;
		len = FUNC2(buf);
	}

	for (; list_index < FUNC0(cmds); ) {
		const char *name = cmds[list_index].name;

		list_index++;
		if (FUNC3(name, buf, len) == 0)
			return FUNC1(name);
	}

	return NULL;
}