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

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

__attribute__((used)) static void FUNC5(struct page *page)
{
	if (!page || FUNC0(page))
		/*
		 * For split b-tree node pages, this function may be called
		 * twice.  We ignore the 2nd or later calls by this check.
		 */
		return;

	FUNC2(page);
	FUNC1(page);
	FUNC3(page);
	FUNC4(page);
}