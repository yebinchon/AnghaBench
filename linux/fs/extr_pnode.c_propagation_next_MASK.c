#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * next; } ;
struct mount {int /*<<< orphan*/  mnt_slave_list; TYPE_1__ mnt_slave; struct mount* mnt_master; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 struct mount* FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mount* FUNC3 (struct mount*) ; 
 struct mount* FUNC4 (struct mount*) ; 

__attribute__((used)) static struct mount *FUNC5(struct mount *m,
					 struct mount *origin)
{
	/* are there any slaves of this mount? */
	if (!FUNC0(m) && !FUNC2(&m->mnt_slave_list))
		return FUNC1(m);

	while (1) {
		struct mount *master = m->mnt_master;

		if (master == origin->mnt_master) {
			struct mount *next = FUNC3(m);
			return (next == origin) ? NULL : next;
		} else if (m->mnt_slave.next != &master->mnt_slave_list)
			return FUNC4(m);

		/* back at master */
		m = master;
	}
}