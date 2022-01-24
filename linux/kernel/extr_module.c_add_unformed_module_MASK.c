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
struct module {scalar_t__ state; int /*<<< orphan*/  list; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EEXIST ; 
 scalar_t__ MODULE_STATE_LIVE ; 
 scalar_t__ MODULE_STATE_UNFORMED ; 
 struct module* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct module*) ; 
 int /*<<< orphan*/  FUNC4 (struct module*) ; 
 int /*<<< orphan*/  module_mutex ; 
 int /*<<< orphan*/  module_wq ; 
 int /*<<< orphan*/  modules ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct module *mod)
{
	int err;
	struct module *old;

	mod->state = MODULE_STATE_UNFORMED;

again:
	FUNC5(&module_mutex);
	old = FUNC0(mod->name, FUNC7(mod->name), true);
	if (old != NULL) {
		if (old->state != MODULE_STATE_LIVE) {
			/* Wait in case it fails to load. */
			FUNC6(&module_mutex);
			err = FUNC8(module_wq,
					       FUNC1(mod->name));
			if (err)
				goto out_unlocked;
			goto again;
		}
		err = -EEXIST;
		goto out;
	}
	FUNC4(mod);
	FUNC2(&mod->list, &modules);
	FUNC3(mod);
	err = 0;

out:
	FUNC6(&module_mutex);
out_unlocked:
	return err;
}