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
struct mm_struct {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMF_HUGE_ZERO_PAGE ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  huge_zero_page ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct page *FUNC5(struct mm_struct *mm)
{
	if (FUNC4(MMF_HUGE_ZERO_PAGE, &mm->flags))
		return FUNC0(huge_zero_page);

	if (!FUNC1())
		return NULL;

	if (FUNC3(MMF_HUGE_ZERO_PAGE, &mm->flags))
		FUNC2();

	return FUNC0(huge_zero_page);
}