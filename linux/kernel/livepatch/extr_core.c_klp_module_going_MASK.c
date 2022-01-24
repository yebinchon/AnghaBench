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
struct module {scalar_t__ state; int klp_alive; } ;

/* Variables and functions */
 scalar_t__ MODULE_STATE_COMING ; 
 scalar_t__ MODULE_STATE_GOING ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct module*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  klp_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct module *mod)
{
	if (FUNC0(mod->state != MODULE_STATE_GOING &&
		    mod->state != MODULE_STATE_COMING))
		return;

	FUNC2(&klp_mutex);
	/*
	 * Each module has to know that klp_module_going()
	 * has been called. We never know what module will
	 * get patched by a new patch.
	 */
	mod->klp_alive = false;

	FUNC1(mod, NULL);

	FUNC3(&klp_mutex);
}