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
struct TYPE_3__ {char* name; int (* func ) (char*) ;} ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* cmds ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char*,char*,char**) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(char *arg)
{
	char *cmd, *cont, *tmp = FUNC2(arg);
	int i, ret = 0, len;

	cmd = FUNC5(tmp, " ", &cont);
	if (cmd == NULL)
		goto out;
	len = FUNC3(cmd);
	for (i = 0; i < FUNC0(cmds); i++) {
		if (len != FUNC3(cmds[i].name))
			continue;
		if (FUNC4(cmds[i].name, cmd, len) == 0) {
			ret = cmds[i].func(cont);
			break;
		}
	}
out:
	FUNC1(tmp);
	return ret;
}