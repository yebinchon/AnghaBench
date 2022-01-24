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
struct file_ra_state {int /*<<< orphan*/  ra_pages; } ;
struct file {int dummy; } ;
struct address_space {int /*<<< orphan*/  host; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct address_space*,struct file_ra_state*,struct file*,int,int /*<<< orphan*/ ,unsigned long) ; 

void
FUNC5(struct address_space *mapping,
			   struct file_ra_state *ra, struct file *filp,
			   struct page *page, pgoff_t offset,
			   unsigned long req_size)
{
	/* no read-ahead */
	if (!ra->ra_pages)
		return;

	/*
	 * Same bit is used for PG_readahead and PG_reclaim.
	 */
	if (FUNC1(page))
		return;

	FUNC0(page);

	/*
	 * Defer asynchronous read-ahead on IO congestion.
	 */
	if (FUNC3(mapping->host))
		return;

	if (FUNC2())
		return;

	/* do read-ahead */
	FUNC4(mapping, ra, filp, true, offset, req_size);
}