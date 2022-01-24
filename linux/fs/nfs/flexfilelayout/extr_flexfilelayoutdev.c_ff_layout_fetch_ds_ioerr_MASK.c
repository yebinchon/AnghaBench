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
struct pnfs_layout_range {int dummy; } ;
struct pnfs_layout_hdr {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head) ; 
 struct list_head discard ; 
 unsigned int FUNC1 (struct pnfs_layout_hdr*,struct pnfs_layout_range const*,struct list_head*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 

unsigned int FUNC3(struct pnfs_layout_hdr *lo,
				      const struct pnfs_layout_range *range,
				      struct list_head *head,
				      unsigned int maxnum)
{
	unsigned int ret;

	ret = FUNC1(lo, range, head, maxnum);
	/* If we're over the max, discard all remaining entries */
	if (ret == maxnum) {
		FUNC0(discard);
		FUNC1(lo, range, &discard, -1);
		FUNC2(&discard);
	}
	return ret;
}