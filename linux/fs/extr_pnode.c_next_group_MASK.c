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
struct TYPE_2__ {struct TYPE_2__* next; } ;
struct mount {scalar_t__ mnt_group_id; TYPE_1__ mnt_slave; TYPE_1__ mnt_slave_list; struct mount* mnt_master; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 struct mount* FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct mount* FUNC3 (struct mount*) ; 
 struct mount* FUNC4 (struct mount*) ; 

__attribute__((used)) static struct mount *FUNC5(struct mount *m, struct mount *origin)
{
	while (1) {
		while (1) {
			struct mount *next;
			if (!FUNC0(m) && !FUNC2(&m->mnt_slave_list))
				return FUNC1(m);
			next = FUNC3(m);
			if (m->mnt_group_id == origin->mnt_group_id) {
				if (next == origin)
					return NULL;
			} else if (m->mnt_slave.next != &next->mnt_slave)
				break;
			m = next;
		}
		/* m is the last peer */
		while (1) {
			struct mount *master = m->mnt_master;
			if (m->mnt_slave.next != &master->mnt_slave_list)
				return FUNC4(m);
			m = FUNC3(master);
			if (master->mnt_group_id == origin->mnt_group_id)
				break;
			if (master->mnt_slave.next == &m->mnt_slave)
				break;
			m = master;
		}
		if (m == origin)
			return NULL;
	}
}