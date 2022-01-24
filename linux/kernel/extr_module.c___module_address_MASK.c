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
struct module {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MODULE_STATE_UNFORMED ; 
 struct module* FUNC1 (unsigned long) ; 
 unsigned long module_addr_max ; 
 unsigned long module_addr_min ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,struct module*) ; 

struct module *FUNC4(unsigned long addr)
{
	struct module *mod;

	if (addr < module_addr_min || addr > module_addr_max)
		return NULL;

	FUNC2();

	mod = FUNC1(addr);
	if (mod) {
		FUNC0(!FUNC3(addr, mod));
		if (mod->state == MODULE_STATE_UNFORMED)
			mod = NULL;
	}
	return mod;
}