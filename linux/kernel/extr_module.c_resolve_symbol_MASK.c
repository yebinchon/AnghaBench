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
struct module {int taints; } ;
struct load_info {int dummy; } ;
struct kernel_symbol {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int EINVAL ; 
 struct kernel_symbol* FUNC0 (int) ; 
 int /*<<< orphan*/  MODULE_NAME_LEN ; 
 int TAINT_PROPRIETARY_MODULE ; 
 int /*<<< orphan*/  FUNC1 (struct load_info const*,char const*,struct module*,int /*<<< orphan*/  const*) ; 
 struct kernel_symbol* FUNC2 (char const*,struct module**,int /*<<< orphan*/  const**,int,int) ; 
 int /*<<< orphan*/  module_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct module*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct module*,struct module*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct load_info const*,struct kernel_symbol const*,struct module*) ; 

__attribute__((used)) static const struct kernel_symbol *FUNC10(struct module *mod,
						  const struct load_info *info,
						  const char *name,
						  char ownername[])
{
	struct module *owner;
	const struct kernel_symbol *sym;
	const s32 *crc;
	int err;

	/*
	 * The module_mutex should not be a heavily contended lock;
	 * if we get the occasional sleep here, we'll go an extra iteration
	 * in the wait_event_interruptible(), which is harmless.
	 */
	FUNC7();
	FUNC4(&module_mutex);
	sym = FUNC2(name, &owner, &crc,
			  !(mod->taints & (1 << TAINT_PROPRIETARY_MODULE)), true);
	if (!sym)
		goto unlock;

	if (!FUNC1(info, name, mod, crc)) {
		sym = FUNC0(-EINVAL);
		goto getname;
	}

	err = FUNC9(info, sym, mod);
	if (err) {
		sym = FUNC0(err);
		goto getname;
	}

	err = FUNC6(mod, owner);
	if (err) {
		sym = FUNC0(err);
		goto getname;
	}

getname:
	/* We must make copy under the lock if we failed to get ref. */
	FUNC8(ownername, FUNC3(owner), MODULE_NAME_LEN);
unlock:
	FUNC5(&module_mutex);
	return sym;
}