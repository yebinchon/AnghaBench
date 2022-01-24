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
struct writeback_control {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct page*,struct writeback_control*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  end_swap_bio_write ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

int FUNC6(struct page *page, struct writeback_control *wbc)
{
	int ret = 0;

	if (FUNC4(page)) {
		FUNC5(page);
		goto out;
	}
	if (FUNC2(page) == 0) {
		FUNC3(page);
		FUNC5(page);
		FUNC1(page);
		goto out;
	}
	ret = FUNC0(page, wbc, end_swap_bio_write);
out:
	return ret;
}