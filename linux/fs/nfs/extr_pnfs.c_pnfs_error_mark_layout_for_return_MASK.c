#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  iomode; } ;
struct pnfs_layout_segment {TYPE_1__ pls_range; } ;
struct pnfs_layout_range {int /*<<< orphan*/  iomode; int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
struct pnfs_layout_hdr {int /*<<< orphan*/  plh_return_segs; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;
typedef  enum pnfs_iomode { ____Placeholder_pnfs_iomode } pnfs_iomode ;
struct TYPE_4__ {struct pnfs_layout_hdr* layout; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  NFS4_MAX_UINT64 ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pnfs_layout_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct pnfs_layout_hdr*,int /*<<< orphan*/ *,struct pnfs_layout_range*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pnfs_layout_hdr*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct pnfs_layout_hdr*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pnfs_layout_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct inode *inode,
				       struct pnfs_layout_segment *lseg)
{
	struct pnfs_layout_hdr *lo = FUNC0(inode)->layout;
	struct pnfs_layout_range range = {
		.iomode = lseg->pls_range.iomode,
		.offset = 0,
		.length = NFS4_MAX_UINT64,
	};
	bool return_now = false;

	FUNC7(&inode->i_lock);
	if (!FUNC2(lo)) {
		FUNC8(&inode->i_lock);
		return;
	}
	FUNC6(lo, range.iomode, 0);
	/*
	 * mark all matching lsegs so that we are sure to have no live
	 * segments at hand when sending layoutreturn. See pnfs_put_lseg()
	 * for how it works.
	 */
	if (FUNC3(lo, &lo->plh_return_segs, &range, 0) != -EBUSY) {
		nfs4_stateid stateid;
		enum pnfs_iomode iomode;

		return_now = FUNC4(lo, &stateid, &iomode);
		FUNC8(&inode->i_lock);
		if (return_now)
			FUNC5(lo, &stateid, iomode, false);
	} else {
		FUNC8(&inode->i_lock);
		FUNC1(inode, 0);
	}
}