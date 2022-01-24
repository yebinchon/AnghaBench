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
struct module {int /*<<< orphan*/  dev_table_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 char** compatible ; 
 scalar_t__ FUNC3 (char) ; 
 char** name ; 
 int /*<<< orphan*/  of_device_id ; 
 int FUNC4 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char** type ; 

__attribute__((used)) static void FUNC6(void *symval, struct module *mod)
{
	char alias[500];
	int len;
	char *tmp;

	FUNC0(symval, of_device_id, name);
	FUNC0(symval, of_device_id, type);
	FUNC0(symval, of_device_id, compatible);

	len = FUNC4(alias, "of:N%sT%s", (*name)[0] ? *name : "*",
		      (*type)[0] ? *type : "*");

	if ((*compatible)[0])
		FUNC4(&alias[len], "%sC%s", (*type)[0] ? "*" : "",
			*compatible);

	/* Replace all whitespace with underscores */
	for (tmp = alias; tmp && *tmp; tmp++)
		if (FUNC3(*tmp))
			*tmp = '_';

	FUNC2(&mod->dev_table_buf, "MODULE_ALIAS(\"%s\");\n", alias);
	FUNC5(alias, "C");
	FUNC1(alias);
	FUNC2(&mod->dev_table_buf, "MODULE_ALIAS(\"%s\");\n", alias);
}