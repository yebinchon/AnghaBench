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
struct ring_buffer {long aux_nr_pages; unsigned long aux_pgoff; int /*<<< orphan*/ * aux_pages; } ;
struct page {int dummy; } ;

/* Variables and functions */
 struct page* FUNC0 (struct ring_buffer*,unsigned long) ; 
 int FUNC1 (unsigned long,unsigned long) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ) ; 

struct page *
FUNC3(struct ring_buffer *rb, unsigned long pgoff)
{
	if (rb->aux_nr_pages) {
		/* above AUX space */
		if (pgoff > rb->aux_pgoff + rb->aux_nr_pages)
			return NULL;

		/* AUX space */
		if (pgoff >= rb->aux_pgoff) {
			int aux_pgoff = FUNC1(pgoff - rb->aux_pgoff, rb->aux_nr_pages);
			return FUNC2(rb->aux_pages[aux_pgoff]);
		}
	}

	return FUNC0(rb, pgoff);
}