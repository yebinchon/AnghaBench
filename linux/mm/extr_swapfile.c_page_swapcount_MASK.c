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
struct swap_info_struct {int /*<<< orphan*/ * swap_map; } ;
struct swap_cluster_info {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 struct swap_info_struct* FUNC0 (TYPE_1__) ; 
 struct swap_cluster_info* FUNC1 (struct swap_info_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (struct swap_info_struct*,struct swap_cluster_info*) ; 

int FUNC6(struct page *page)
{
	int count = 0;
	struct swap_info_struct *p;
	struct swap_cluster_info *ci;
	swp_entry_t entry;
	unsigned long offset;

	entry.val = FUNC2(page);
	p = FUNC0(entry);
	if (p) {
		offset = FUNC4(entry);
		ci = FUNC1(p, offset);
		count = FUNC3(p->swap_map[offset]);
		FUNC5(p, ci);
	}
	return count;
}