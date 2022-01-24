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
struct balloon_dev_info {int /*<<< orphan*/  pages_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct balloon_dev_info*,struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct balloon_dev_info *b_dev_info,
			  struct page *page)
{
	unsigned long flags;

	FUNC1(&b_dev_info->pages_lock, flags);
	FUNC0(b_dev_info, page);
	FUNC2(&b_dev_info->pages_lock, flags);
}