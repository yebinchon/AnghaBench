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
typedef  scalar_t__ xfs_fsize_t ;
struct TYPE_4__ {int /*<<< orphan*/  totsize; } ;
struct xfs_attr_shortform {TYPE_2__ hdr; } ;
typedef  struct xfs_attr_shortform xfs_attr_shortform_t ;
struct TYPE_3__ {int /*<<< orphan*/  di_size; } ;
struct xfs_inode {int /*<<< orphan*/ * i_cowfp; int /*<<< orphan*/ * i_afp; TYPE_1__ i_d; } ;
struct xfs_dinode {int di_aformat; int /*<<< orphan*/  di_size; int /*<<< orphan*/  di_format; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EFSCORRUPTED ; 
 int /*<<< orphan*/  KM_NOFS ; 
#define  S_IFBLK 137 
#define  S_IFCHR 136 
#define  S_IFDIR 135 
#define  S_IFIFO 134 
#define  S_IFLNK 133 
 int S_IFMT ; 
#define  S_IFREG 132 
#define  S_IFSOCK 131 
 struct inode* FUNC1 (struct xfs_inode*) ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 scalar_t__ FUNC2 (struct xfs_dinode*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_dinode*) ; 
#define  XFS_DINODE_FMT_BTREE 130 
#define  XFS_DINODE_FMT_EXTENTS 129 
#define  XFS_DINODE_FMT_LOCAL 128 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_dinode*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_inode*) ; 
 int /*<<< orphan*/  xfs_ifork_zone ; 
 int FUNC11 (struct xfs_inode*,struct xfs_dinode*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct xfs_inode*,struct xfs_dinode*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct xfs_inode*,struct xfs_dinode*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

int
FUNC16(
	struct xfs_inode	*ip,
	struct xfs_dinode	*dip)
{
	struct inode		*inode = FUNC1(ip);
	struct xfs_attr_shortform *atp;
	int			size;
	int			error = 0;
	xfs_fsize_t             di_size;

	switch (inode->i_mode & S_IFMT) {
	case S_IFIFO:
	case S_IFCHR:
	case S_IFBLK:
	case S_IFSOCK:
		ip->i_d.di_size = 0;
		inode->i_rdev = FUNC15(FUNC8(dip));
		break;

	case S_IFREG:
	case S_IFLNK:
	case S_IFDIR:
		switch (dip->di_format) {
		case XFS_DINODE_FMT_LOCAL:
			di_size = FUNC5(dip->di_size);
			size = (int)di_size;
			error = FUNC13(ip, dip, XFS_DATA_FORK, size);
			break;
		case XFS_DINODE_FMT_EXTENTS:
			error = FUNC12(ip, dip, XFS_DATA_FORK);
			break;
		case XFS_DINODE_FMT_BTREE:
			error = FUNC11(ip, dip, XFS_DATA_FORK);
			break;
		default:
			return -EFSCORRUPTED;
		}
		break;

	default:
		return -EFSCORRUPTED;
	}
	if (error)
		return error;

	if (FUNC14(ip)) {
		FUNC0(ip->i_cowfp == NULL);
		FUNC10(ip);
	}

	if (!FUNC3(dip))
		return 0;

	FUNC0(ip->i_afp == NULL);
	ip->i_afp = FUNC7(xfs_ifork_zone, KM_NOFS);

	switch (dip->di_aformat) {
	case XFS_DINODE_FMT_LOCAL:
		atp = (xfs_attr_shortform_t *)FUNC2(dip);
		size = FUNC4(atp->hdr.totsize);

		error = FUNC13(ip, dip, XFS_ATTR_FORK, size);
		break;
	case XFS_DINODE_FMT_EXTENTS:
		error = FUNC12(ip, dip, XFS_ATTR_FORK);
		break;
	case XFS_DINODE_FMT_BTREE:
		error = FUNC11(ip, dip, XFS_ATTR_FORK);
		break;
	default:
		error = -EFSCORRUPTED;
		break;
	}
	if (error) {
		FUNC6(xfs_ifork_zone, ip->i_afp);
		ip->i_afp = NULL;
		if (ip->i_cowfp)
			FUNC6(xfs_ifork_zone, ip->i_cowfp);
		ip->i_cowfp = NULL;
		FUNC9(ip, XFS_DATA_FORK);
	}
	return error;
}