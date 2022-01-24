#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct page {int dummy; } ;
struct address_space {int /*<<< orphan*/  i_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,TYPE_1__) ; 
 struct address_space* FUNC5 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct page *page)
{
	swp_entry_t entry = { .val = FUNC2(page) };
	struct address_space *address_space = FUNC5(entry);

	FUNC6(&address_space->i_pages);
	FUNC0(page, entry);
	FUNC7(&address_space->i_pages);

	FUNC4(page, entry);
	FUNC3(page, FUNC1(page));
}