#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_mount_t ;
struct TYPE_15__ {int /*<<< orphan*/ * i_mount; } ;
typedef  TYPE_2__ xfs_inode_t ;
struct TYPE_16__ {short const ili_fields; } ;
typedef  TYPE_3__ xfs_inode_log_item_t ;
typedef  int /*<<< orphan*/  xfs_dinode_t ;
typedef  int /*<<< orphan*/  xfs_bmdr_block_t ;
typedef  int /*<<< orphan*/  xfs_bmbt_rec_t ;
struct TYPE_14__ {int /*<<< orphan*/ * if_data; } ;
struct xfs_ifork {int if_flags; int /*<<< orphan*/  if_broot_bytes; int /*<<< orphan*/ * if_broot; int /*<<< orphan*/  if_bytes; TYPE_1__ if_u1; } ;
struct TYPE_13__ {int /*<<< orphan*/  i_rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_11__* FUNC1 (TYPE_2__*) ; 
 int XFS_ATTR_FORK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int XFS_DATA_FORK ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
#define  XFS_DINODE_FMT_BTREE 137 
#define  XFS_DINODE_FMT_DEV 136 
#define  XFS_DINODE_FMT_EXTENTS 135 
#define  XFS_DINODE_FMT_LOCAL 134 
 int XFS_IFEXTENTS ; 
 int FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 struct xfs_ifork* FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
#define  XFS_ILOG_ABROOT 133 
#define  XFS_ILOG_ADATA 132 
#define  XFS_ILOG_AEXT 131 
#define  XFS_ILOG_DBROOT 130 
#define  XFS_ILOG_DDATA 129 
 int XFS_ILOG_DEV ; 
#define  XFS_ILOG_DEXT 128 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 

void
FUNC14(
	xfs_inode_t		*ip,
	xfs_dinode_t		*dip,
	xfs_inode_log_item_t	*iip,
	int			whichfork)
{
	char			*cp;
	struct xfs_ifork	*ifp;
	xfs_mount_t		*mp;
	static const short	brootflag[2] =
		{ XFS_ILOG_DBROOT, XFS_ILOG_ABROOT };
	static const short	dataflag[2] =
		{ XFS_ILOG_DDATA, XFS_ILOG_ADATA };
	static const short	extflag[2] =
		{ XFS_ILOG_DEXT, XFS_ILOG_AEXT };

	if (!iip)
		return;
	ifp = FUNC7(ip, whichfork);
	/*
	 * This can happen if we gave up in iformat in an error path,
	 * for the attribute fork.
	 */
	if (!ifp) {
		FUNC0(whichfork == XFS_ATTR_FORK);
		return;
	}
	cp = FUNC3(dip, whichfork);
	mp = ip->i_mount;
	switch (FUNC5(ip, whichfork)) {
	case XFS_DINODE_FMT_LOCAL:
		if ((iip->ili_fields & dataflag[whichfork]) &&
		    (ifp->if_bytes > 0)) {
			FUNC0(ifp->if_u1.if_data != NULL);
			FUNC0(ifp->if_bytes <= FUNC8(ip, whichfork));
			FUNC10(cp, ifp->if_u1.if_data, ifp->if_bytes);
		}
		break;

	case XFS_DINODE_FMT_EXTENTS:
		FUNC0((ifp->if_flags & XFS_IFEXTENTS) ||
		       !(iip->ili_fields & extflag[whichfork]));
		if ((iip->ili_fields & extflag[whichfork]) &&
		    (ifp->if_bytes > 0)) {
			FUNC0(FUNC6(ip, whichfork) > 0);
			(void)FUNC13(ip, (xfs_bmbt_rec_t *)cp,
				whichfork);
		}
		break;

	case XFS_DINODE_FMT_BTREE:
		if ((iip->ili_fields & brootflag[whichfork]) &&
		    (ifp->if_broot_bytes > 0)) {
			FUNC0(ifp->if_broot != NULL);
			FUNC0(FUNC2(ifp->if_broot) <=
			        FUNC8(ip, whichfork));
			FUNC11(mp, ifp->if_broot, ifp->if_broot_bytes,
				(xfs_bmdr_block_t *)cp,
				FUNC4(dip, mp, whichfork));
		}
		break;

	case XFS_DINODE_FMT_DEV:
		if (iip->ili_fields & XFS_ILOG_DEV) {
			FUNC0(whichfork == XFS_DATA_FORK);
			FUNC12(dip,
					FUNC9(FUNC1(ip)->i_rdev));
		}
		break;

	default:
		FUNC0(0);
		break;
	}
}