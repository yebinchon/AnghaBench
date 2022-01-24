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
struct TYPE_2__ {int /*<<< orphan*/  iomode; } ;
struct pnfs_layout_segment {int /*<<< orphan*/  pls_list; TYPE_1__ pls_range; int /*<<< orphan*/  pls_flags; } ;
struct pnfs_layout_hdr {int /*<<< orphan*/  plh_return_segs; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_LSEG_LAYOUTRETURN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct pnfs_layout_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct pnfs_layout_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC4(struct pnfs_layout_hdr *lo,
		struct pnfs_layout_segment *lseg)
{
	if (FUNC3(NFS_LSEG_LAYOUTRETURN, &lseg->pls_flags) &&
	    FUNC1(lo)) {
		FUNC2(lo, lseg->pls_range.iomode, 0);
		FUNC0(&lseg->pls_list, &lo->plh_return_segs);
		return true;
	}
	return false;
}