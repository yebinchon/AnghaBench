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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 char* FUNC1 (char*,char) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(char *param, char *val,
				const char *modname, int on_err)
{
	char *sep;

	sep = FUNC1(param, '.');
	if (sep) {
		/* needed only for ddebug_dyndbg_boot_param_cb */
		*sep = '\0';
		modname = param;
		param = sep + 1;
	}
	if (FUNC2(param, "dyndbg"))
		return on_err; /* determined by caller */

	FUNC0((val ? val : "+p"), modname);

	return 0; /* query failure shouldnt stop module load */
}