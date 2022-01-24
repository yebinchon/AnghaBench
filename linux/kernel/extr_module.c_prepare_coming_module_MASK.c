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
struct module {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODULE_STATE_COMING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct module*) ; 
 int /*<<< orphan*/  FUNC1 (struct module*) ; 
 int FUNC2 (struct module*) ; 
 int /*<<< orphan*/  module_notify_list ; 

__attribute__((used)) static int FUNC3(struct module *mod)
{
	int err;

	FUNC1(mod);
	err = FUNC2(mod);
	if (err)
		return err;

	FUNC0(&module_notify_list,
				     MODULE_STATE_COMING, mod);
	return 0;
}