#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct pnfs_layout_range {int /*<<< orphan*/  length; int /*<<< orphan*/  offset; int /*<<< orphan*/  iomode; } ;
struct TYPE_10__ {int /*<<< orphan*/  seqid; } ;
struct pnfs_layout_hdr {TYPE_4__ plh_stateid; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_9__ {int /*<<< orphan*/  seqid; } ;
typedef  TYPE_1__ nfs4_stateid ;
struct TYPE_11__ {struct pnfs_layout_hdr* layout; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  IOMODE_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS4_MAX_UINT64 ; 
 TYPE_8__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct pnfs_layout_hdr*) ; 
 int FUNC7 (struct pnfs_layout_hdr*,int /*<<< orphan*/ *,struct pnfs_layout_range*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

bool FUNC10(nfs4_stateid *dst,
		struct pnfs_layout_range *dst_range,
		struct inode *inode)
{
	struct pnfs_layout_hdr *lo;
	struct pnfs_layout_range range = {
		.iomode = IOMODE_ANY,
		.offset = 0,
		.length = NFS4_MAX_UINT64,
	};
	bool ret = false;
	FUNC0(head);
	int err;

	FUNC8(&inode->i_lock);
	lo = FUNC1(inode)->layout;
	if (lo &&  FUNC6(lo) &&
	    FUNC3(dst, &lo->plh_stateid)) {
		/* Is our call using the most recent seqid? If so, bump it */
		if (!FUNC2(&lo->plh_stateid, dst)) {
			FUNC4(dst);
			ret = true;
			goto out;
		}
		/* Try to update the seqid to the most recent */
		err = FUNC7(lo, &head, &range, 0);
		if (err != -EBUSY) {
			dst->seqid = lo->plh_stateid.seqid;
			*dst_range = range;
			ret = true;
		}
	}
out:
	FUNC9(&inode->i_lock);
	FUNC5(&head);
	return ret;
}