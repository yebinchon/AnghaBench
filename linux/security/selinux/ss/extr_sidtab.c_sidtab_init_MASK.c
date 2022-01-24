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
typedef  size_t u32 ;
struct sidtab {int /*<<< orphan*/  lock; int /*<<< orphan*/ * convert; scalar_t__ count; TYPE_1__* isids; int /*<<< orphan*/ * rcache; int /*<<< orphan*/  roots; } ;
struct TYPE_2__ {scalar_t__ set; } ;

/* Variables and functions */
 size_t SECINITSID_NUM ; 
 int /*<<< orphan*/  SIDTAB_MAX ; 
 size_t SIDTAB_RCACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct sidtab *s)
{
	u32 i;

	FUNC0(s->roots, 0, sizeof(s->roots));

	/* max count is SIDTAB_MAX so valid index is always < SIDTAB_MAX */
	for (i = 0; i < SIDTAB_RCACHE_SIZE; i++)
		s->rcache[i] = SIDTAB_MAX;

	for (i = 0; i < SECINITSID_NUM; i++)
		s->isids[i].set = 0;

	s->count = 0;
	s->convert = NULL;

	FUNC1(&s->lock);
	return 0;
}