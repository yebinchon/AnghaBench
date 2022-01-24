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
struct ring_buffer {int aux_nr_pages; int /*<<< orphan*/  aux_pages; int /*<<< orphan*/ * aux_priv; int /*<<< orphan*/  (* free_aux ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ring_buffer*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ring_buffer *rb)
{
	int pg;

	/*
	 * Should never happen, the last reference should be dropped from
	 * perf_mmap_close() path, which first stops aux transactions (which
	 * in turn are the atomic holders of aux_refcount) and then does the
	 * last rb_free_aux().
	 */
	FUNC0(FUNC1());

	if (rb->aux_priv) {
		rb->free_aux(rb->aux_priv);
		rb->free_aux = NULL;
		rb->aux_priv = NULL;
	}

	if (rb->aux_nr_pages) {
		for (pg = 0; pg < rb->aux_nr_pages; pg++)
			FUNC3(rb, pg);

		FUNC2(rb->aux_pages);
		rb->aux_nr_pages = 0;
	}
}