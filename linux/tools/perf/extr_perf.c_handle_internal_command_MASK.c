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
struct cmd_struct {char const* cmd; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct cmd_struct*) ; 
 struct cmd_struct* commands ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_struct*,int,char const**) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 

__attribute__((used)) static void FUNC4(int argc, const char **argv)
{
	const char *cmd = argv[0];
	unsigned int i;

	/* Turn "perf cmd --help" into "perf help cmd" */
	if (argc > 1 && !FUNC3(argv[1], "--help")) {
		argv[1] = argv[0];
		argv[0] = cmd = "help";
	}

	for (i = 0; i < FUNC0(commands); i++) {
		struct cmd_struct *p = commands+i;
		if (FUNC3(p->cmd, cmd))
			continue;
		FUNC1(FUNC2(p, argc, argv));
	}
}