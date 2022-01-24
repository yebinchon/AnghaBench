#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* feature; char* command; int /*<<< orphan*/  (* process_fn ) () ;} ;
struct TYPE_3__ {char* feature; int /*<<< orphan*/  (* process_fn ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* isst_cmds ; 
 TYPE_1__* isst_help_cmds ; 
 size_t optind ; 
 int /*<<< orphan*/  FUNC4 (int,size_t,char**) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(int argc, char **argv)
{
	int i = 0, matched = 0;
	char *feature = argv[optind];
	char *cmd = argv[optind + 1];

	if (!feature || !cmd)
		return;

	FUNC1("feature name [%s] command [%s]\n", feature, cmd);
	if (!FUNC5(cmd, "-h") || !FUNC5(cmd, "--help")) {
		while (isst_help_cmds[i].feature) {
			if (!FUNC5(isst_help_cmds[i].feature, feature)) {
				isst_help_cmds[i].process_fn();
				FUNC2(0);
			}
			++i;
		}
	}

	FUNC0();

	i = 0;
	while (isst_cmds[i].feature) {
		if (!FUNC5(isst_cmds[i].feature, feature) &&
		    !FUNC5(isst_cmds[i].command, cmd)) {
			FUNC4(argc, optind + 1, argv);
			isst_cmds[i].process_fn();
			matched = 1;
			break;
		}
		++i;
	}

	if (!matched)
		FUNC3(stderr, "Invalid command\n");
}