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
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned long,unsigned long,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  page_cluster ; 
 int /*<<< orphan*/  swapin_readahead_hits ; 

__attribute__((used)) static unsigned long FUNC5(unsigned long offset)
{
	static unsigned long prev_offset;
	unsigned int hits, pages, max_pages;
	static atomic_t last_readahead_pages;

	max_pages = 1 << FUNC0(page_cluster);
	if (max_pages <= 1)
		return 1;

	hits = FUNC4(&swapin_readahead_hits, 0);
	pages = FUNC1(prev_offset, offset, hits, max_pages,
				  FUNC2(&last_readahead_pages));
	if (!hits)
		prev_offset = offset;
	FUNC3(&last_readahead_pages, pages);

	return pages;
}