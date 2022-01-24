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
struct ubifs_orphan {int /*<<< orphan*/  new_list; scalar_t__ new; int /*<<< orphan*/  list; int /*<<< orphan*/  rb; } ;
struct ubifs_info {int tot_orphans; int new_orphans; int /*<<< orphan*/  orph_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ubifs_orphan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ubifs_info *c, struct ubifs_orphan *o)
{
	FUNC2(&o->rb, &c->orph_tree);
	FUNC1(&o->list);
	c->tot_orphans -= 1;

	if (o->new) {
		FUNC1(&o->new_list);
		c->new_orphans -= 1;
	}

	FUNC0(o);
}