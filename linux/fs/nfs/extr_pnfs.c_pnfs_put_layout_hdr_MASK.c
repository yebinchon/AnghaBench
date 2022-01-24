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
struct pnfs_layout_hdr {int /*<<< orphan*/  plh_segs; int /*<<< orphan*/  plh_refcount; struct inode* plh_inode; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pnfs_layout_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct pnfs_layout_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct pnfs_layout_hdr*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct pnfs_layout_hdr *lo)
{
	struct inode *inode;

	if (!lo)
		return;
	inode = lo->plh_inode;
	FUNC4(lo);

	if (FUNC5(&lo->plh_refcount, &inode->i_lock)) {
		if (!FUNC1(&lo->plh_segs))
			FUNC0(1, "NFS: BUG unfreed layout segments.\n");
		FUNC2(lo);
		FUNC6(&inode->i_lock);
		FUNC3(lo);
	}
}