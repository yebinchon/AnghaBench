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
struct page {scalar_t__ index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,struct page*) ; 

__attribute__((used)) static void FUNC2(struct page *page1, struct page *page2)
{
	/* Always lock in order of increasing index. */
	if (page1->index > page2->index)
		FUNC1(page1, page2);

	FUNC0(page1);
	if (page1 != page2)
		FUNC0(page2);
}