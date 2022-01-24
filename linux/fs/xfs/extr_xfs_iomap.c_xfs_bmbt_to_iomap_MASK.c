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
struct xfs_mount {int dummy; } ;
struct xfs_inode {TYPE_1__* i_itemp; struct xfs_mount* i_mount; } ;
struct xfs_bmbt_irec {scalar_t__ br_startblock; scalar_t__ br_state; int /*<<< orphan*/  br_blockcount; int /*<<< orphan*/  br_startoff; } ;
struct iomap {int /*<<< orphan*/  flags; int /*<<< orphan*/  dax_dev; int /*<<< orphan*/  bdev; void* length; void* offset; int /*<<< orphan*/  type; void* addr; } ;
struct TYPE_2__ {int ili_fsync_fields; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DELAYSTARTBLOCK ; 
 scalar_t__ HOLESTARTBLOCK ; 
 int /*<<< orphan*/  IOMAP_DELALLOC ; 
 int /*<<< orphan*/  IOMAP_F_DIRTY ; 
 int /*<<< orphan*/  IOMAP_F_SHARED ; 
 int /*<<< orphan*/  IOMAP_HOLE ; 
 int /*<<< orphan*/  IOMAP_MAPPED ; 
 void* IOMAP_NULL_ADDR ; 
 int /*<<< orphan*/  IOMAP_UNWRITTEN ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_inode*) ; 
 scalar_t__ XFS_EXT_UNWRITTEN ; 
 void* FUNC2 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int XFS_ILOG_TIMESTAMP ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct xfs_inode*,struct xfs_bmbt_irec*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_inode*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_inode*,scalar_t__) ; 

int
FUNC11(
	struct xfs_inode	*ip,
	struct iomap		*iomap,
	struct xfs_bmbt_irec	*imap,
	bool			shared)
{
	struct xfs_mount	*mp = ip->i_mount;

	if (FUNC4(!FUNC10(ip, imap->br_startblock)))
		return FUNC5(ip, imap);

	if (imap->br_startblock == HOLESTARTBLOCK) {
		iomap->addr = IOMAP_NULL_ADDR;
		iomap->type = IOMAP_HOLE;
	} else if (imap->br_startblock == DELAYSTARTBLOCK ||
		   FUNC3(imap->br_startblock)) {
		iomap->addr = IOMAP_NULL_ADDR;
		iomap->type = IOMAP_DELALLOC;
	} else {
		iomap->addr = FUNC0(FUNC8(ip, imap->br_startblock));
		if (imap->br_state == XFS_EXT_UNWRITTEN)
			iomap->type = IOMAP_UNWRITTEN;
		else
			iomap->type = IOMAP_MAPPED;
	}
	iomap->offset = FUNC2(mp, imap->br_startoff);
	iomap->length = FUNC2(mp, imap->br_blockcount);
	iomap->bdev = FUNC6(FUNC1(ip));
	iomap->dax_dev = FUNC7(FUNC1(ip));

	if (FUNC9(ip) &&
	    (ip->i_itemp->ili_fsync_fields & ~XFS_ILOG_TIMESTAMP))
		iomap->flags |= IOMAP_F_DIRTY;
	if (shared)
		iomap->flags |= IOMAP_F_SHARED;
	return 0;
}