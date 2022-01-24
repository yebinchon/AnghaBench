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
struct page {int dummy; } ;
struct frame_vector {int got_ref; int nr_frames; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct page** FUNC2 (struct frame_vector*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

void FUNC4(struct frame_vector *vec)
{
	int i;
	struct page **pages;

	if (!vec->got_ref)
		goto out;
	pages = FUNC2(vec);
	/*
	 * frame_vector_pages() might needed to do a conversion when
	 * get_vaddr_frames() got pages but vec was later converted to pfns.
	 * But it shouldn't really fail to convert pfns back...
	 */
	if (FUNC1(FUNC0(pages)))
		goto out;
	for (i = 0; i < vec->nr_frames; i++)
		FUNC3(pages[i]);
	vec->got_ref = false;
out:
	vec->nr_frames = 0;
}