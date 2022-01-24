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
struct module {char* name; } ;

/* Variables and functions */
 scalar_t__ MODULE_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static int FUNC3(struct module *mod)
{
	const char *mod_name;

	mod_name = FUNC2(mod->name, '/');
	if (mod_name == NULL)
		mod_name = mod->name;
	else
		mod_name++;
	if (FUNC1(mod_name) >= MODULE_NAME_LEN) {
		FUNC0("module name is too long [%s.ko]\n", mod->name);
		return 1;
	}

	return 0;
}