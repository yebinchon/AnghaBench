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
struct page_counter {unsigned long min; int /*<<< orphan*/  usage; struct page_counter* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct page_counter*,int /*<<< orphan*/ ) ; 

void FUNC2(struct page_counter *counter, unsigned long nr_pages)
{
	struct page_counter *c;

	counter->min = nr_pages;

	for (c = counter; c; c = c->parent)
		FUNC1(c, FUNC0(&c->usage));
}