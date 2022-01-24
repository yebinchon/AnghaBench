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
struct page_counter {unsigned long min; unsigned long low; TYPE_1__* parent; int /*<<< orphan*/  low_usage; int /*<<< orphan*/  min_usage; } ;
struct TYPE_2__ {int /*<<< orphan*/  children_low_usage; int /*<<< orphan*/  children_min_usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct page_counter *c,
				      unsigned long usage)
{
	unsigned long protected, old_protected;
	long delta;

	if (!c->parent)
		return;

	if (c->min || FUNC1(&c->min_usage)) {
		if (usage <= c->min)
			protected = usage;
		else
			protected = 0;

		old_protected = FUNC2(&c->min_usage, protected);
		delta = protected - old_protected;
		if (delta)
			FUNC0(delta, &c->parent->children_min_usage);
	}

	if (c->low || FUNC1(&c->low_usage)) {
		if (usage <= c->low)
			protected = usage;
		else
			protected = 0;

		old_protected = FUNC2(&c->low_usage, protected);
		delta = protected - old_protected;
		if (delta)
			FUNC0(delta, &c->parent->children_low_usage);
	}
}