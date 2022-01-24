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
struct ctl_table_header {struct completion* unregistering; int /*<<< orphan*/  used; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct completion* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ctl_table_header*) ; 
 int /*<<< orphan*/  FUNC2 (struct completion*) ; 
 int /*<<< orphan*/  FUNC3 (struct ctl_table_header*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysctl_lock ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct completion*) ; 

__attribute__((used)) static void FUNC8(struct ctl_table_header *p)
{
	/*
	 * if p->used is 0, nobody will ever touch that entry again;
	 * we'll eliminate all paths to it before dropping sysctl_lock
	 */
	if (FUNC6(p->used)) {
		struct completion wait;
		FUNC2(&wait);
		p->unregistering = &wait;
		FUNC5(&sysctl_lock);
		FUNC7(&wait);
	} else {
		/* anything non-NULL; we'll never dereference it */
		p->unregistering = FUNC0(-EINVAL);
		FUNC5(&sysctl_lock);
	}
	/*
	 * Prune dentries for unregistered sysctls: namespaced sysctls
	 * can have duplicate names and contaminate dcache very badly.
	 */
	FUNC3(p);
	/*
	 * do not remove from the list until nobody holds it; walking the
	 * list in do_sysctl() relies on that.
	 */
	FUNC4(&sysctl_lock);
	FUNC1(p);
}