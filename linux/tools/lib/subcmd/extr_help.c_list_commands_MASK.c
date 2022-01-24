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
struct cmdnames {unsigned int cnt; TYPE_1__** names; } ;
struct TYPE_2__ {unsigned int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct cmdnames*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 scalar_t__ FUNC6 (char const*) ; 

void FUNC7(const char *title, struct cmdnames *main_cmds,
		   struct cmdnames *other_cmds)
{
	unsigned int i, longest = 0;

	for (i = 0; i < main_cmds->cnt; i++)
		if (longest < main_cmds->names[i]->len)
			longest = main_cmds->names[i]->len;
	for (i = 0; i < other_cmds->cnt; i++)
		if (longest < other_cmds->names[i]->len)
			longest = other_cmds->names[i]->len;

	if (main_cmds->cnt) {
		char *exec_path = FUNC1();
		FUNC4("available %s in '%s'\n", title, exec_path);
		FUNC4("----------------");
		FUNC2('-', FUNC6(title) + FUNC6(exec_path));
		FUNC5('\n');
		FUNC3(main_cmds, longest);
		FUNC5('\n');
		FUNC0(exec_path);
	}

	if (other_cmds->cnt) {
		FUNC4("%s available from elsewhere on your $PATH\n", title);
		FUNC4("---------------------------------------");
		FUNC2('-', FUNC6(title));
		FUNC5('\n');
		FUNC3(other_cmds, longest);
		FUNC5('\n');
	}
}