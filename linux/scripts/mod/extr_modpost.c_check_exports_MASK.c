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
struct symbol {int /*<<< orphan*/  name; int /*<<< orphan*/  export; int /*<<< orphan*/  namespace; int /*<<< orphan*/  weak; struct module* module; struct symbol* next; } ;
struct module {char* name; int /*<<< orphan*/  gpl_compatible; int /*<<< orphan*/  required_namespaces; struct symbol* unres; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 struct symbol* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ have_vmlinux ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct module*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char*,...) ; 
 scalar_t__ warn_unresolved ; 
 int /*<<< orphan*/  write_namespace_deps ; 

__attribute__((used)) static int FUNC8(struct module *mod)
{
	struct symbol *s, *exp;
	int err = 0;

	for (s = mod->unres; s; s = s->next) {
		const char *basename;
		exp = FUNC3(s->name);
		if (!exp || exp->module == mod) {
			if (have_vmlinux && !s->weak) {
				if (warn_unresolved) {
					FUNC7("\"%s\" [%s.ko] undefined!\n",
					     s->name, mod->name);
				} else {
					FUNC4("\"%s\" [%s.ko] undefined!\n",
					       s->name, mod->name);
					err = 1;
				}
			}
			continue;
		}
		basename = FUNC6(mod->name, '/');
		if (basename)
			basename++;
		else
			basename = mod->name;

		if (exp->namespace) {
			FUNC0(&mod->required_namespaces,
				      exp->namespace);

			if (!write_namespace_deps &&
			    !FUNC5(mod, exp->namespace)) {
				FUNC7("module %s uses symbol %s from namespace %s, but does not import it.\n",
				     basename, exp->name, exp->namespace);
			}
		}

		if (!mod->gpl_compatible)
			FUNC1(exp->export, basename, exp->name);
		FUNC2(exp->export, basename, exp->name);
	}

	return err;
}