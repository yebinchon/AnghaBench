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
typedef  int /*<<< orphan*/  xfs_ino_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  sb_meta_uuid; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_dsymlink_hdr {void* sl_blkno; void* sl_owner; int /*<<< orphan*/  sl_uuid; void* sl_bytes; void* sl_offset; void* sl_magic; } ;
struct xfs_buf {int /*<<< orphan*/ * b_ops; int /*<<< orphan*/  b_bn; struct xfs_dsymlink_hdr* b_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_SYMLINK_MAGIC ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_dsymlink_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  xfs_symlink_buf_ops ; 

int
FUNC5(
	struct xfs_mount	*mp,
	xfs_ino_t		ino,
	uint32_t		offset,
	uint32_t		size,
	struct xfs_buf		*bp)
{
	struct xfs_dsymlink_hdr	*dsl = bp->b_addr;

	if (!FUNC4(&mp->m_sb))
		return 0;

	FUNC2(dsl, 0, sizeof(struct xfs_dsymlink_hdr));
	dsl->sl_magic = FUNC0(XFS_SYMLINK_MAGIC);
	dsl->sl_offset = FUNC0(offset);
	dsl->sl_bytes = FUNC0(size);
	FUNC3(&dsl->sl_uuid, &mp->m_sb.sb_meta_uuid);
	dsl->sl_owner = FUNC1(ino);
	dsl->sl_blkno = FUNC1(bp->b_bn);
	bp->b_ops = &xfs_symlink_buf_ops;

	return sizeof(struct xfs_dsymlink_hdr);
}