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
struct kvec {scalar_t__ iov_len; int /*<<< orphan*/  iov_base; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(const struct kvec *kiov, int nr_segs, int write,
		struct page **pages)
{
	int seg;

	for (seg = 0; seg < nr_segs; seg++) {
		if (FUNC0(kiov[seg].iov_len != PAGE_SIZE))
			return seg;

		pages[seg] = FUNC2(kiov[seg].iov_base);
		FUNC1(pages[seg]);
	}

	return seg;
}