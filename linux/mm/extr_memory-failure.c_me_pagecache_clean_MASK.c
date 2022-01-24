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
struct address_space {int dummy; } ;

/* Variables and functions */
 int MF_FAILED ; 
 int MF_RECOVERED ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct address_space* FUNC2 (struct page*) ; 
 int FUNC3 (struct page*,unsigned long,struct address_space*) ; 

__attribute__((used)) static int FUNC4(struct page *p, unsigned long pfn)
{
	struct address_space *mapping;

	FUNC1(p);

	/*
	 * For anonymous pages we're done the only reference left
	 * should be the one m_f() holds.
	 */
	if (FUNC0(p))
		return MF_RECOVERED;

	/*
	 * Now truncate the page in the page cache. This is really
	 * more like a "temporary hole punch"
	 * Don't do this for block devices when someone else
	 * has a reference, because it could be file system metadata
	 * and that's not safe to truncate.
	 */
	mapping = FUNC2(p);
	if (!mapping) {
		/*
		 * Page has been teared down in the meanwhile
		 */
		return MF_FAILED;
	}

	/*
	 * Truncation is a bit tricky. Enable it per file system for now.
	 *
	 * Open: to take i_mutex or not for this? Right now we don't.
	 */
	return FUNC3(p, pfn, mapping);
}