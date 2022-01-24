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
struct kmod_path {int kmod; int /*<<< orphan*/  name; int /*<<< orphan*/  comp; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_ID__NONE ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct kmod_path*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 
 char* FUNC5 (char const*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char,char) ; 

int FUNC7(struct kmod_path *m, const char *path,
		       bool alloc_name)
{
	const char *name = FUNC5(path, '/');
	const char *ext  = FUNC5(path, '.');
	bool is_simple_name = false;

	FUNC2(m, 0x0, sizeof(*m));
	name = name ? name + 1 : path;

	/*
	 * '.' is also a valid character for module name. For example:
	 * [aaa.bbb] is a valid module name. '[' should have higher
	 * priority than '.ko' suffix.
	 *
	 * The kernel names are from machine__mmap_name. Such
	 * name should belong to kernel itself, not kernel module.
	 */
	if (name[0] == '[') {
		is_simple_name = true;
		if ((FUNC4(name, "[kernel.kallsyms]", 17) == 0) ||
		    (FUNC4(name, "[guest.kernel.kallsyms", 22) == 0) ||
		    (FUNC4(name, "[vdso]", 6) == 0) ||
		    (FUNC4(name, "[vdso32]", 8) == 0) ||
		    (FUNC4(name, "[vdsox32]", 9) == 0) ||
		    (FUNC4(name, "[vsyscall]", 10) == 0)) {
			m->kmod = false;

		} else
			m->kmod = true;
	}

	/* No extension, just return name. */
	if ((ext == NULL) || is_simple_name) {
		if (alloc_name) {
			m->name = FUNC3(name);
			return m->name ? 0 : -ENOMEM;
		}
		return 0;
	}

	m->comp = FUNC1(ext + 1);
	if (m->comp > COMP_ID__NONE)
		ext -= 3;

	/* Check .ko extension only if there's enough name left. */
	if (ext > name)
		m->kmod = !FUNC4(ext, ".ko", 3);

	if (alloc_name) {
		if (m->kmod) {
			if (FUNC0(&m->name, "[%.*s]", (int) (ext - name), name) == -1)
				return -ENOMEM;
		} else {
			if (FUNC0(&m->name, "%s", name) == -1)
				return -ENOMEM;
		}

		FUNC6(m->name, '-', '_');
	}

	return 0;
}