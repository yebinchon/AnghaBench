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
struct pnfs_layout_hdr {int /*<<< orphan*/  plh_bulk_destroy; } ;
struct list_head {int dummy; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_2__ {struct pnfs_layout_hdr* layout; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pnfs_layout_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC6(struct inode *inode,
		struct list_head *layout_list)
{
	struct pnfs_layout_hdr *lo;
	bool ret = false;

	FUNC4(&inode->i_lock);
	lo = FUNC0(inode)->layout;
	if (lo != NULL && FUNC2(&lo->plh_bulk_destroy)) {
		FUNC3(lo);
		FUNC1(&lo->plh_bulk_destroy, layout_list);
		ret = true;
	}
	FUNC5(&inode->i_lock);
	return ret;
}