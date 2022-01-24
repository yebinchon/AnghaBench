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
typedef  scalar_t__ xfs_fileoff_t ;
struct xfs_mount {int dummy; } ;
struct TYPE_2__ {scalar_t__ di_aformat; int /*<<< orphan*/  di_anextents; } ;
struct xfs_inode {TYPE_1__ i_d; struct xfs_mount* i_mount; } ;
struct xfs_bmbt_irec {int dummy; } ;
struct iomap {int dummy; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  XFS_BMAPI_ATTRFORK ; 
 scalar_t__ FUNC1 (struct xfs_mount*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct xfs_mount*,scalar_t__) ; 
 scalar_t__ XFS_DINODE_FMT_LOCAL ; 
 scalar_t__ FUNC3 (struct xfs_mount*) ; 
 struct xfs_inode* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_inode*) ; 
 int FUNC6 (struct xfs_inode*,scalar_t__,scalar_t__,struct xfs_bmbt_irec*,int*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xfs_inode*,struct iomap*,struct xfs_bmbt_irec*,int) ; 
 unsigned int FUNC8 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_inode*,unsigned int) ; 

__attribute__((used)) static int
FUNC10(
	struct inode		*inode,
	loff_t			offset,
	loff_t			length,
	unsigned		flags,
	struct iomap		*iomap)
{
	struct xfs_inode	*ip = FUNC4(inode);
	struct xfs_mount	*mp = ip->i_mount;
	xfs_fileoff_t		offset_fsb = FUNC2(mp, offset);
	xfs_fileoff_t		end_fsb = FUNC1(mp, offset + length);
	struct xfs_bmbt_irec	imap;
	int			nimaps = 1, error = 0;
	unsigned		lockmode;

	if (FUNC3(mp))
		return -EIO;

	lockmode = FUNC8(ip);

	/* if there are no attribute fork or extents, return ENOENT */
	if (!FUNC5(ip) || !ip->i_d.di_anextents) {
		error = -ENOENT;
		goto out_unlock;
	}

	FUNC0(ip->i_d.di_aformat != XFS_DINODE_FMT_LOCAL);
	error = FUNC6(ip, offset_fsb, end_fsb - offset_fsb, &imap,
			       &nimaps, XFS_BMAPI_ATTRFORK);
out_unlock:
	FUNC9(ip, lockmode);

	if (error)
		return error;
	FUNC0(nimaps);
	return FUNC7(ip, iomap, &imap, false);
}