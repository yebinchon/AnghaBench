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
struct Qdisc_ops {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct Qdisc_ops const* default_qdisc_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct Qdisc_ops* FUNC2 (char const*) ; 
 int /*<<< orphan*/  qdisc_mod_lock ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(const char *name)
{
	const struct Qdisc_ops *ops;

	if (!FUNC0(CAP_NET_ADMIN))
		return -EPERM;

	FUNC4(&qdisc_mod_lock);
	ops = FUNC2(name);
	if (!ops) {
		/* Not found, drop lock and try to load module */
		FUNC5(&qdisc_mod_lock);
		FUNC3("sch_%s", name);
		FUNC4(&qdisc_mod_lock);

		ops = FUNC2(name);
	}

	if (ops) {
		/* Set new default */
		FUNC1(default_qdisc_ops->owner);
		default_qdisc_ops = ops;
	}
	FUNC5(&qdisc_mod_lock);

	return ops ? 0 : -ENOENT;
}