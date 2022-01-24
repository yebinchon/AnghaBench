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
struct TYPE_2__ {int /*<<< orphan*/  (* putback_page ) (struct page*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 struct address_space* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

void FUNC7(struct page *page)
{
	struct address_space *mapping;

	FUNC3(!FUNC1(page), page);
	FUNC3(!FUNC2(page), page);
	FUNC3(!FUNC0(page), page);

	mapping = FUNC5(page);
	mapping->a_ops->putback_page(page);
	FUNC4(page);
}