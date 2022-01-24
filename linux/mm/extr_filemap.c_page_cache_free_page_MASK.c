#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct address_space {TYPE_1__* a_ops; } ;
struct TYPE_2__ {void (* freepage ) (struct page*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HPAGE_PMD_NR ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static void FUNC6(struct address_space *mapping,
				struct page *page)
{
	void (*freepage)(struct page *);

	freepage = mapping->a_ops->freepage;
	if (freepage)
		freepage(page);

	if (FUNC1(page) && !FUNC0(page)) {
		FUNC4(page, HPAGE_PMD_NR);
		FUNC2(FUNC3(page) <= 0, page);
	} else {
		FUNC5(page);
	}
}