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
struct ubifs_orphan {int del; scalar_t__ inum; int /*<<< orphan*/  list; int /*<<< orphan*/  rb; int /*<<< orphan*/  new; struct ubifs_orphan* dnext; } ;
struct ubifs_info {int tot_orphans; int /*<<< orphan*/  orphan_lock; struct ubifs_orphan* orph_dnext; int /*<<< orphan*/  orph_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_orphan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,int) ; 

__attribute__((used)) static void FUNC7(struct ubifs_info *c)
{
	struct ubifs_orphan *orphan, *dnext;

	FUNC4(&c->orphan_lock);
	dnext = c->orph_dnext;
	while (dnext) {
		orphan = dnext;
		dnext = orphan->dnext;
		FUNC6(c, !orphan->new);
		FUNC6(c, orphan->del);
		FUNC3(&orphan->rb, &c->orph_tree);
		FUNC2(&orphan->list);
		c->tot_orphans -= 1;
		FUNC0("deleting orphan ino %lu", (unsigned long)orphan->inum);
		FUNC1(orphan);
	}
	c->orph_dnext = NULL;
	FUNC5(&c->orphan_lock);
}