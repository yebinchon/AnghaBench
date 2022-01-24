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
struct module {int /*<<< orphan*/  state; } ;
struct load_info {int /*<<< orphan*/  sechdrs; int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODULE_STATE_COMING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module*) ; 
 int /*<<< orphan*/  FUNC1 (struct module*) ; 
 int /*<<< orphan*/  FUNC2 (struct module*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct module*) ; 
 int /*<<< orphan*/  module_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct module*) ; 

__attribute__((used)) static int FUNC7(struct module *mod, struct load_info *info)
{
	int err;

	FUNC4(&module_mutex);

	/* Find duplicate symbols (must be called under lock). */
	err = FUNC6(mod);
	if (err < 0)
		goto out;

	/* This relies on module_mutex for list integrity. */
	FUNC0(info->hdr, info->sechdrs, mod);

	FUNC2(mod, false);
	FUNC1(mod);
	FUNC3(mod);

	/* Mark state as coming so strong_try_module_get() ignores us,
	 * but kallsyms etc. can see us. */
	mod->state = MODULE_STATE_COMING;
	FUNC5(&module_mutex);

	return 0;

out:
	FUNC5(&module_mutex);
	return err;
}