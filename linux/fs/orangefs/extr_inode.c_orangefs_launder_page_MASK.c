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
struct writeback_control {int /*<<< orphan*/  nr_to_write; int /*<<< orphan*/  sync_mode; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WB_SYNC_ALL ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

__attribute__((used)) static int FUNC4(struct page *page)
{
	int r = 0;
	struct writeback_control wbc = {
		.sync_mode = WB_SYNC_ALL,
		.nr_to_write = 0,
	};
	FUNC3(page);
	if (FUNC0(page)) {
		r = FUNC2(page, &wbc);
		FUNC1(page);
	}
	return r;
}