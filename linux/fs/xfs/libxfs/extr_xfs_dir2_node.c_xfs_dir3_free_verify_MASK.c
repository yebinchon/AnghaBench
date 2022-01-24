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
typedef  int /*<<< orphan*/ * xfs_failaddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  sb_meta_uuid; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_dir3_blk_hdr {int /*<<< orphan*/  lsn; int /*<<< orphan*/  blkno; int /*<<< orphan*/  uuid; int /*<<< orphan*/  magic; } ;
struct xfs_dir2_free_hdr {int /*<<< orphan*/  lsn; int /*<<< orphan*/  blkno; int /*<<< orphan*/  uuid; int /*<<< orphan*/  magic; } ;
struct xfs_buf {scalar_t__ b_bn; struct xfs_dir3_blk_hdr* b_addr; struct xfs_mount* b_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/ * __this_address ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_buf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static xfs_failaddr_t
FUNC5(
	struct xfs_buf		*bp)
{
	struct xfs_mount	*mp = bp->b_mount;
	struct xfs_dir2_free_hdr *hdr = bp->b_addr;

	if (!FUNC4(bp, hdr->magic))
		return __this_address;

	if (FUNC3(&mp->m_sb)) {
		struct xfs_dir3_blk_hdr *hdr3 = bp->b_addr;

		if (!FUNC1(&hdr3->uuid, &mp->m_sb.sb_meta_uuid))
			return __this_address;
		if (FUNC0(hdr3->blkno) != bp->b_bn)
			return __this_address;
		if (!FUNC2(mp, FUNC0(hdr3->lsn)))
			return __this_address;
	}

	/* XXX: should bounds check the xfs_dir3_icfree_hdr here */

	return NULL;
}