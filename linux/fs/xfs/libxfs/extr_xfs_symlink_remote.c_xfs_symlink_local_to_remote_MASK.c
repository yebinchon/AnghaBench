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
struct xfs_trans {int dummy; } ;
struct xfs_mount {int /*<<< orphan*/  m_sb; } ;
struct xfs_inode {int /*<<< orphan*/  i_ino; struct xfs_mount* i_mount; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_data; } ;
struct xfs_ifork {int /*<<< orphan*/  if_bytes; TYPE_1__ if_u1; } ;
struct xfs_dsymlink_hdr {int dummy; } ;
struct xfs_buf {char* b_addr; int /*<<< orphan*/ * b_ops; int /*<<< orphan*/  b_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_BLFT_SYMLINK_BUF ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfs_symlink_buf_ops ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_trans*,struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_trans*,struct xfs_buf*,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC7(
	struct xfs_trans	*tp,
	struct xfs_buf		*bp,
	struct xfs_inode	*ip,
	struct xfs_ifork	*ifp)
{
	struct xfs_mount	*mp = ip->i_mount;
	char			*buf;

	FUNC5(tp, bp, XFS_BLFT_SYMLINK_BUF);

	if (!FUNC3(&mp->m_sb)) {
		bp->b_ops = NULL;
		FUNC2(bp->b_addr, ifp->if_u1.if_data, ifp->if_bytes);
		FUNC6(tp, bp, 0, ifp->if_bytes - 1);
		return;
	}

	/*
	 * As this symlink fits in an inode literal area, it must also fit in
	 * the smallest buffer the filesystem supports.
	 */
	FUNC0(FUNC1(bp->b_length) >=
			ifp->if_bytes + sizeof(struct xfs_dsymlink_hdr));

	bp->b_ops = &xfs_symlink_buf_ops;

	buf = bp->b_addr;
	buf += FUNC4(mp, ip->i_ino, 0, ifp->if_bytes, bp);
	FUNC2(buf, ifp->if_u1.if_data, ifp->if_bytes);
	FUNC6(tp, bp, 0, sizeof(struct xfs_dsymlink_hdr) +
					ifp->if_bytes - 1);
}