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
struct xfs_mount {int /*<<< orphan*/  m_super; } ;
struct xfs_inode {scalar_t__ i_ino; int /*<<< orphan*/  i_ioend_lock; int /*<<< orphan*/  i_ioend_list; int /*<<< orphan*/  i_ioend_work; scalar_t__ i_checked; scalar_t__ i_sick; int /*<<< orphan*/  i_d; scalar_t__ i_delayed_blks; scalar_t__ i_flags; int /*<<< orphan*/  i_df; int /*<<< orphan*/  i_cformat; scalar_t__ i_cnextents; int /*<<< orphan*/ * i_cowfp; int /*<<< orphan*/ * i_afp; int /*<<< orphan*/  i_imap; struct xfs_mount* i_mount; int /*<<< orphan*/  i_pincount; } ;
struct xfs_imap {int dummy; } ;
struct TYPE_3__ {scalar_t__ i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct xfs_inode*) ; 
 int /*<<< orphan*/  XFS_DINODE_FMT_EXTENTS ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct xfs_inode* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vn_active ; 
 int /*<<< orphan*/  xfs_end_io ; 
 int /*<<< orphan*/  xfs_inode_zone ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_inode*) ; 

struct xfs_inode *
FUNC12(
	struct xfs_mount	*mp,
	xfs_ino_t		ino)
{
	struct xfs_inode	*ip;

	/*
	 * if this didn't occur in transactions, we could use
	 * KM_MAYFAIL and return NULL here on ENOMEM. Set the
	 * code up to do this anyway.
	 */
	ip = FUNC7(xfs_inode_zone, 0);
	if (!ip)
		return NULL;
	if (FUNC6(mp->m_super, FUNC3(ip))) {
		FUNC8(xfs_inode_zone, ip);
		return NULL;
	}

	/* VFS doesn't initialise i_mode! */
	FUNC3(ip)->i_mode = 0;

	FUNC4(mp, vn_active);
	FUNC0(FUNC5(&ip->i_pincount) == 0);
	FUNC0(!FUNC11(ip));
	FUNC0(ip->i_ino == 0);

	/* initialise the xfs inode */
	ip->i_ino = ino;
	ip->i_mount = mp;
	FUNC9(&ip->i_imap, 0, sizeof(struct xfs_imap));
	ip->i_afp = NULL;
	ip->i_cowfp = NULL;
	ip->i_cnextents = 0;
	ip->i_cformat = XFS_DINODE_FMT_EXTENTS;
	FUNC9(&ip->i_df, 0, sizeof(ip->i_df));
	ip->i_flags = 0;
	ip->i_delayed_blks = 0;
	FUNC9(&ip->i_d, 0, sizeof(ip->i_d));
	ip->i_sick = 0;
	ip->i_checked = 0;
	FUNC2(&ip->i_ioend_work, xfs_end_io);
	FUNC1(&ip->i_ioend_list);
	FUNC10(&ip->i_ioend_lock);

	return ip;
}