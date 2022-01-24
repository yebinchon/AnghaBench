#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct swap_info_struct {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_THP_SWAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct swap_info_struct* FUNC2 (TYPE_1__) ; 
 struct page* FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int FUNC7 (struct swap_info_struct*,TYPE_1__) ; 

__attribute__((used)) static bool FUNC8(struct page *page)
{
	swp_entry_t entry;
	struct swap_info_struct *si;

	if (!FUNC0(CONFIG_THP_SWAP) || FUNC4(!FUNC1(page)))
		return FUNC6(page) != 0;

	page = FUNC3(page);
	entry.val = FUNC5(page);
	si = FUNC2(entry);
	if (si)
		return FUNC7(si, entry);
	return false;
}