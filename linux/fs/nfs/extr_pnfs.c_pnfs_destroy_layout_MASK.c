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
struct pnfs_layout_hdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_lock; } ;
struct nfs_inode {TYPE_1__ vfs_inode; struct pnfs_layout_hdr* layout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS_LAYOUT_RO_FAILED ; 
 int /*<<< orphan*/  NFS_LAYOUT_RW_FAILED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pnfs_layout_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct pnfs_layout_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pnfs_layout_hdr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pnfs_layout_hdr*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tmp_list ; 

void
FUNC9(struct nfs_inode *nfsi)
{
	struct pnfs_layout_hdr *lo;
	FUNC0(tmp_list);

	FUNC7(&nfsi->vfs_inode.i_lock);
	lo = nfsi->layout;
	if (lo) {
		FUNC3(lo);
		FUNC5(lo, &tmp_list);
		FUNC4(lo, NFS_LAYOUT_RO_FAILED);
		FUNC4(lo, NFS_LAYOUT_RW_FAILED);
		FUNC8(&nfsi->vfs_inode.i_lock);
		FUNC2(&tmp_list);
		FUNC1(&nfsi->vfs_inode, 0);
		FUNC6(lo);
	} else
		FUNC8(&nfsi->vfs_inode.i_lock);
}