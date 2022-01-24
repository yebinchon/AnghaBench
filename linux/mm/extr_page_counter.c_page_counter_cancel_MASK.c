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
struct page_counter {int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 long FUNC1 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct page_counter*,long) ; 

void FUNC3(struct page_counter *counter, unsigned long nr_pages)
{
	long new;

	new = FUNC1(nr_pages, &counter->usage);
	FUNC2(counter, new);
	/* More uncharges than charges? */
	FUNC0(new < 0);
}