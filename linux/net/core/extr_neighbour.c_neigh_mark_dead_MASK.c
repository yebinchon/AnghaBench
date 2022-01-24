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
struct neighbour {int dead; TYPE_1__* tbl; int /*<<< orphan*/  gc_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  gc_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct neighbour *n)
{
	n->dead = 1;
	if (!FUNC2(&n->gc_list)) {
		FUNC1(&n->gc_list);
		FUNC0(&n->tbl->gc_entries);
	}
}