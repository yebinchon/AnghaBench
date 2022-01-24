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
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ free_huge_page ; 
 scalar_t__ FUNC1 (struct page*) ; 

int FUNC2(struct page *page_head)
{
	if (!FUNC0(page_head))
		return 0;

	return FUNC1(page_head) == free_huge_page;
}