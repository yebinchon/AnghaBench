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
struct mount {int /*<<< orphan*/  mnt_slave_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 struct mount* FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mount *FUNC3(struct mount *m,
						struct mount *origin)
{
	/*
	 * Advance m such that propagation_next will not return
	 * the slaves of m.
	 */
	if (!FUNC0(m) && !FUNC2(&m->mnt_slave_list))
		m = FUNC1(m);

	return m;
}