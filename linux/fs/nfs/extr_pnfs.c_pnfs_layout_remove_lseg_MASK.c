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
struct pnfs_layout_segment {int /*<<< orphan*/  pls_flags; int /*<<< orphan*/  pls_list; } ;
struct pnfs_layout_hdr {int /*<<< orphan*/  plh_flags; int /*<<< orphan*/  plh_outstanding; int /*<<< orphan*/  plh_segs; int /*<<< orphan*/  plh_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_LAYOUT_BULK_RECALL ; 
 int /*<<< orphan*/  NFS_LAYOUT_INVALID_STID ; 
 int /*<<< orphan*/  NFS_LAYOUT_RETURN ; 
 int /*<<< orphan*/  NFS_LAYOUT_RETURN_REQUESTED ; 
 int /*<<< orphan*/  NFS_LSEG_LAYOUTRETURN ; 
 int /*<<< orphan*/  NFS_LSEG_VALID ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct pnfs_layout_hdr *lo,
		struct pnfs_layout_segment *lseg)
{
	FUNC0(FUNC7(NFS_LSEG_VALID, &lseg->pls_flags));
	FUNC3(&lseg->pls_list);
	/* Matched by pnfs_get_layout_hdr in pnfs_layout_insert_lseg */
	FUNC5(&lo->plh_refcount);
	if (FUNC7(NFS_LSEG_LAYOUTRETURN, &lseg->pls_flags))
		return;
	if (FUNC4(&lo->plh_segs) &&
	    !FUNC7(NFS_LAYOUT_RETURN_REQUESTED, &lo->plh_flags) &&
	    !FUNC7(NFS_LAYOUT_RETURN, &lo->plh_flags)) {
		if (FUNC1(&lo->plh_outstanding) == 0)
			FUNC6(NFS_LAYOUT_INVALID_STID, &lo->plh_flags);
		FUNC2(NFS_LAYOUT_BULK_RECALL, &lo->plh_flags);
	}
}