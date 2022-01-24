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
struct module {int async_probe_requested; } ;

/* Variables and functions */
 int FUNC0 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(char *param, char *val, const char *modname,
				   void *arg)
{
	struct module *mod = arg;
	int ret;

	if (FUNC2(param, "async_probe") == 0) {
		mod->async_probe_requested = true;
		return 0;
	}

	/* Check for magic 'dyndbg' arg */
	ret = FUNC0(param, val, modname);
	if (ret != 0)
		FUNC1("%s: unknown parameter '%s' ignored\n", modname, param);
	return 0;
}