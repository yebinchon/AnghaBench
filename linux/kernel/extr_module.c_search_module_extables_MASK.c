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
struct module {int /*<<< orphan*/  num_exentries; int /*<<< orphan*/  extable; } ;
struct exception_table_entry {int dummy; } ;

/* Variables and functions */
 struct module* FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct exception_table_entry* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

const struct exception_table_entry *FUNC4(unsigned long addr)
{
	const struct exception_table_entry *e = NULL;
	struct module *mod;

	FUNC1();
	mod = FUNC0(addr);
	if (!mod)
		goto out;

	if (!mod->num_exentries)
		goto out;

	e = FUNC3(mod->extable,
			   mod->num_exentries,
			   addr);
out:
	FUNC2();

	/*
	 * Now, if we found one, we are running inside it now, hence
	 * we cannot unload the module, hence no refcnt needed.
	 */
	return e;
}