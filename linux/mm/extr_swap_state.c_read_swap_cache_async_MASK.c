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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct page* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,unsigned long,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int) ; 

struct page *FUNC2(swp_entry_t entry, gfp_t gfp_mask,
		struct vm_area_struct *vma, unsigned long addr, bool do_poll)
{
	bool page_was_allocated;
	struct page *retpage = FUNC0(entry, gfp_mask,
			vma, addr, &page_was_allocated);

	if (page_was_allocated)
		FUNC1(retpage, do_poll);

	return retpage;
}