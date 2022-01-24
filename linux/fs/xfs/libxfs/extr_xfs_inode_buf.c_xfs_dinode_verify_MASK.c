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
typedef  scalar_t__ xfs_ino_t ;
typedef  int /*<<< orphan*/ * xfs_failaddr_t ;
typedef  unsigned long long uint64_t ;
typedef  int uint16_t ;
struct TYPE_3__ {scalar_t__ sb_inodesize; int /*<<< orphan*/  sb_meta_uuid; } ;
struct xfs_mount {TYPE_1__ m_sb; int /*<<< orphan*/  m_rtdev_targp; } ;
struct xfs_dinode {scalar_t__ di_magic; int di_version; int di_aformat; int /*<<< orphan*/  di_cowextsize; int /*<<< orphan*/  di_flags2; int /*<<< orphan*/  di_extsize; scalar_t__ di_anextents; int /*<<< orphan*/  di_format; scalar_t__ di_flags; int /*<<< orphan*/  di_nblocks; int /*<<< orphan*/  di_nextents; scalar_t__ di_mode; int /*<<< orphan*/  di_size; int /*<<< orphan*/  di_uuid; int /*<<< orphan*/  di_ino; } ;

/* Variables and functions */
#define  S_IFBLK 135 
#define  S_IFCHR 134 
#define  S_IFDIR 133 
#define  S_IFIFO 132 
#define  S_IFLNK 131 
 int S_IFMT ; 
#define  S_IFREG 130 
#define  S_IFSOCK 129 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 scalar_t__ FUNC2 (struct xfs_dinode*) ; 
 scalar_t__ FUNC3 (struct xfs_dinode*) ; 
 unsigned long long XFS_DIFLAG2_COWEXTSIZE ; 
 unsigned long long XFS_DIFLAG2_DAX ; 
 unsigned long long XFS_DIFLAG2_REFLINK ; 
 int XFS_DIFLAG_REALTIME ; 
 int /*<<< orphan*/  XFS_DINODE_CRC_OFF ; 
 int /*<<< orphan*/  XFS_DINODE_FMT_DEV ; 
#define  XFS_DINODE_FMT_EXTENTS 128 
 int /*<<< orphan*/  XFS_DINODE_MAGIC ; 
 scalar_t__ XFS_DIR3_FT_UNKNOWN ; 
 int /*<<< orphan*/ * __this_address ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (struct xfs_dinode*,struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (struct xfs_dinode*,struct xfs_mount*) ; 
 int /*<<< orphan*/ * FUNC11 (struct xfs_mount*,scalar_t__,int,int,unsigned long long) ; 
 int /*<<< orphan*/ * FUNC12 (struct xfs_mount*,scalar_t__,int,int) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (char*,scalar_t__,int /*<<< orphan*/ ) ; 

xfs_failaddr_t
FUNC17(
	struct xfs_mount	*mp,
	xfs_ino_t		ino,
	struct xfs_dinode	*dip)
{
	xfs_failaddr_t		fa;
	uint16_t		mode;
	uint16_t		flags;
	uint64_t		flags2;
	uint64_t		di_size;

	if (dip->di_magic != FUNC7(XFS_DINODE_MAGIC))
		return __this_address;

	/* Verify v3 integrity information first */
	if (dip->di_version >= 3) {
		if (!FUNC14(&mp->m_sb))
			return __this_address;
		if (!FUNC16((char *)dip, mp->m_sb.sb_inodesize,
				      XFS_DINODE_CRC_OFF))
			return __this_address;
		if (FUNC6(dip->di_ino) != ino)
			return __this_address;
		if (!FUNC8(&dip->di_uuid, &mp->m_sb.sb_meta_uuid))
			return __this_address;
	}

	/* don't allow invalid i_size */
	di_size = FUNC6(dip->di_size);
	if (di_size & (1ULL << 63))
		return __this_address;

	mode = FUNC4(dip->di_mode);
	if (mode && FUNC13(mode) == XFS_DIR3_FT_UNKNOWN)
		return __this_address;

	/* No zero-length symlinks/dirs. */
	if ((FUNC1(mode) || FUNC0(mode)) && di_size == 0)
		return __this_address;

	/* Fork checks carried over from xfs_iformat_fork */
	if (mode &&
	    FUNC5(dip->di_nextents) + FUNC4(dip->di_anextents) >
			FUNC6(dip->di_nblocks))
		return __this_address;

	if (mode && FUNC2(dip) > mp->m_sb.sb_inodesize)
		return __this_address;

	flags = FUNC4(dip->di_flags);

	if (mode && (flags & XFS_DIFLAG_REALTIME) && !mp->m_rtdev_targp)
		return __this_address;

	/* check for illegal values of forkoff */
	fa = FUNC10(dip, mp);
	if (fa)
		return fa;

	/* Do we have appropriate data fork formats for the mode? */
	switch (mode & S_IFMT) {
	case S_IFIFO:
	case S_IFCHR:
	case S_IFBLK:
	case S_IFSOCK:
		if (dip->di_format != XFS_DINODE_FMT_DEV)
			return __this_address;
		break;
	case S_IFREG:
	case S_IFLNK:
	case S_IFDIR:
		fa = FUNC9(dip, mp, XFS_DATA_FORK);
		if (fa)
			return fa;
		break;
	case 0:
		/* Uninitialized inode ok. */
		break;
	default:
		return __this_address;
	}

	if (FUNC3(dip)) {
		fa = FUNC9(dip, mp, XFS_ATTR_FORK);
		if (fa)
			return fa;
	} else {
		/*
		 * If there is no fork offset, this may be a freshly-made inode
		 * in a new disk cluster, in which case di_aformat is zeroed.
		 * Otherwise, such an inode must be in EXTENTS format; this goes
		 * for freed inodes as well.
		 */
		switch (dip->di_aformat) {
		case 0:
		case XFS_DINODE_FMT_EXTENTS:
			break;
		default:
			return __this_address;
		}
		if (dip->di_anextents)
			return __this_address;
	}

	/* extent size hint validation */
	fa = FUNC12(mp, FUNC5(dip->di_extsize),
			mode, flags);
	if (fa)
		return fa;

	/* only version 3 or greater inodes are extensively verified here */
	if (dip->di_version < 3)
		return NULL;

	flags2 = FUNC6(dip->di_flags2);

	/* don't allow reflink/cowextsize if we don't have reflink */
	if ((flags2 & (XFS_DIFLAG2_REFLINK | XFS_DIFLAG2_COWEXTSIZE)) &&
	     !FUNC15(&mp->m_sb))
		return __this_address;

	/* only regular files get reflink */
	if ((flags2 & XFS_DIFLAG2_REFLINK) && (mode & S_IFMT) != S_IFREG)
		return __this_address;

	/* don't let reflink and realtime mix */
	if ((flags2 & XFS_DIFLAG2_REFLINK) && (flags & XFS_DIFLAG_REALTIME))
		return __this_address;

	/* don't let reflink and dax mix */
	if ((flags2 & XFS_DIFLAG2_REFLINK) && (flags2 & XFS_DIFLAG2_DAX))
		return __this_address;

	/* COW extent size hint validation */
	fa = FUNC11(mp, FUNC5(dip->di_cowextsize),
			mode, flags, flags2);
	if (fa)
		return fa;

	return NULL;
}