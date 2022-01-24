#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pnfs_layout_range {int dummy; } ;
struct pnfs_layout_segment {int /*<<< orphan*/  pls_seq; struct pnfs_layout_range pls_range; struct pnfs_layout_hdr* pls_layout; int /*<<< orphan*/  pls_flags; int /*<<< orphan*/  pls_refcount; int /*<<< orphan*/  pls_lc_list; int /*<<< orphan*/  pls_list; } ;
struct pnfs_layout_hdr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  seqid; } ;
typedef  TYPE_1__ nfs4_stateid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFS_LSEG_VALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct pnfs_layout_hdr *lo, struct pnfs_layout_segment *lseg,
		const struct pnfs_layout_range *range,
		const nfs4_stateid *stateid)
{
	FUNC0(&lseg->pls_list);
	FUNC0(&lseg->pls_lc_list);
	FUNC2(&lseg->pls_refcount, 1);
	FUNC3(NFS_LSEG_VALID, &lseg->pls_flags);
	lseg->pls_layout = lo;
	lseg->pls_range = *range;
	lseg->pls_seq = FUNC1(stateid->seqid);
}