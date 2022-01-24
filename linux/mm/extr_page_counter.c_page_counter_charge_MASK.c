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
struct page_counter {long watermark; int /*<<< orphan*/  usage; struct page_counter* parent; } ;

/* Variables and functions */
 long FUNC0 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct page_counter*,long) ; 

void FUNC2(struct page_counter *counter, unsigned long nr_pages)
{
	struct page_counter *c;

	for (c = counter; c; c = c->parent) {
		long new;

		new = FUNC0(nr_pages, &c->usage);
		FUNC1(counter, new);
		/*
		 * This is indeed racy, but we can live with some
		 * inaccuracy in the watermark.
		 */
		if (new > c->watermark)
			c->watermark = new;
	}
}