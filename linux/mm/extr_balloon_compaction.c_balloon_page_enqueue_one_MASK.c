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
struct balloon_dev_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BALLOON_INFLATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct balloon_dev_info*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

__attribute__((used)) static void FUNC5(struct balloon_dev_info *b_dev_info,
				     struct page *page)
{
	/*
	 * Block others from accessing the 'page' when we get around to
	 * establishing additional references. We should be the only one
	 * holding a reference to the 'page' at this point. If we are not, then
	 * memory corruption is possible and we should stop execution.
	 */
	FUNC0(!FUNC3(page));
	FUNC2(b_dev_info, page);
	FUNC4(page);
	FUNC1(BALLOON_INFLATE);
}