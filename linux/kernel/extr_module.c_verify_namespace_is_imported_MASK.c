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
 int EINVAL ; 
 char* FUNC0 (struct load_info const*,char*) ; 
 char* FUNC1 (struct load_info const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct kernel_symbol const*) ; 
 char* FUNC3 (struct kernel_symbol const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static int FUNC7(const struct load_info *info,
					const struct kernel_symbol *sym,
					struct module *mod)
{
	const char *namespace;
	char *imported_namespace;

	namespace = FUNC3(sym);
	if (namespace) {
		imported_namespace = FUNC0(info, "import_ns");
		while (imported_namespace) {
			if (FUNC6(namespace, imported_namespace) == 0)
				return 0;
			imported_namespace = FUNC1(
				info, "import_ns", imported_namespace);
		}
#ifdef CONFIG_MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
		pr_warn(
#else
		FUNC4(
#endif
			"%s: module uses symbol (%s) from namespace %s, but does not import it.\n",
			mod->name, FUNC2(sym), namespace);
#ifndef CONFIG_MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
		return -EINVAL;
#endif
	}
	return 0;
}