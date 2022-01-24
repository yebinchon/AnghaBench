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
struct module {int /*<<< orphan*/  name; } ;
struct load_info {int dummy; } ;
struct kernel_symbol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct kernel_symbol const*) ; 
 int MODULE_NAME_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct kernel_symbol const*) ; 
 int /*<<< orphan*/  module_wq ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 struct kernel_symbol* FUNC3 (struct module*,struct load_info const*,char const*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static const struct kernel_symbol *
FUNC5(struct module *mod,
		    const struct load_info *info,
		    const char *name)
{
	const struct kernel_symbol *ksym;
	char owner[MODULE_NAME_LEN];

	if (FUNC4(module_wq,
			!FUNC0(ksym = FUNC3(mod, info, name, owner))
			|| FUNC1(ksym) != -EBUSY,
					     30 * HZ) <= 0) {
		FUNC2("%s: gave up waiting for init of module %s.\n",
			mod->name, owner);
	}
	return ksym;
}