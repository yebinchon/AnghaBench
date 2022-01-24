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
 int FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

void FUNC5(struct page *page)
{
	FUNC3(FUNC0(page) && FUNC2(page), page);
	FUNC3(FUNC1(page), page);
	FUNC4(page);
}