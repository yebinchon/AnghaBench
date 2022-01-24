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
typedef  scalar_t__ xfs_daddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  sb_meta_uuid; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_buf {int dummy; } ;
struct xfs_attr3_rmt_hdr {scalar_t__ rm_owner; int /*<<< orphan*/  rm_bytes; int /*<<< orphan*/  rm_offset; int /*<<< orphan*/  rm_blkno; int /*<<< orphan*/  rm_uuid; int /*<<< orphan*/  rm_magic; } ;

/* Variables and functions */
 int XFS_XATTR_SIZE_MAX ; 
 int /*<<< orphan*/ * __this_address ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_buf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static xfs_failaddr_t
FUNC5(
	struct xfs_mount	*mp,
	struct xfs_buf		*bp,
	void			*ptr,
	int			fsbsize,
	xfs_daddr_t		bno)
{
	struct xfs_attr3_rmt_hdr *rmt = ptr;

	if (!FUNC3(&mp->m_sb))
		return __this_address;
	if (!FUNC4(bp, rmt->rm_magic))
		return __this_address;
	if (!FUNC2(&rmt->rm_uuid, &mp->m_sb.sb_meta_uuid))
		return __this_address;
	if (FUNC1(rmt->rm_blkno) != bno)
		return __this_address;
	if (FUNC0(rmt->rm_bytes) > fsbsize - sizeof(*rmt))
		return __this_address;
	if (FUNC0(rmt->rm_offset) +
				FUNC0(rmt->rm_bytes) > XFS_XATTR_SIZE_MAX)
		return __this_address;
	if (rmt->rm_owner == 0)
		return __this_address;

	return NULL;
}