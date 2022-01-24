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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct page *page, unsigned int offset,
				unsigned int length)
{
	FUNC5(page, offset, length);

	/* No journalling happens on data buffers when this function is used */
	FUNC0(FUNC4(page) && FUNC2(FUNC3(page)));

	FUNC1(page, offset, length);
}