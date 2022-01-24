#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct xfs_mount* i_mount; } ;
typedef  TYPE_1__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_fsblock_t ;
typedef  int /*<<< orphan*/  xfs_bmbt_rec_t ;
typedef  int uint ;
struct xfs_mount {int dummy; } ;
struct xfs_ifork {int if_broot_bytes; char* if_broot; int /*<<< orphan*/  if_flags; } ;
typedef  char xfs_btree_block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_NOFS ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct xfs_mount*,char*,int,int) ; 
 size_t FUNC3 (struct xfs_mount*,int) ; 
 int FUNC4 (struct xfs_mount*) ; 
 scalar_t__ FUNC5 (struct xfs_mount*,char*,int) ; 
 int /*<<< orphan*/  XFS_IFBROOT ; 
 struct xfs_ifork* FUNC6 (TYPE_1__*,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int) ; 
 void* FUNC8 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int FUNC13 (struct xfs_mount*,int,int /*<<< orphan*/ ) ; 

void
FUNC14(
	xfs_inode_t		*ip,
	int			rec_diff,
	int			whichfork)
{
	struct xfs_mount	*mp = ip->i_mount;
	int			cur_max;
	struct xfs_ifork	*ifp;
	struct xfs_btree_block	*new_broot;
	int			new_max;
	size_t			new_size;
	char			*np;
	char			*op;

	/*
	 * Handle the degenerate case quietly.
	 */
	if (rec_diff == 0) {
		return;
	}

	ifp = FUNC6(ip, whichfork);
	if (rec_diff > 0) {
		/*
		 * If there wasn't any memory allocated before, just
		 * allocate it now and get out.
		 */
		if (ifp->if_broot_bytes == 0) {
			new_size = FUNC3(mp, rec_diff);
			ifp->if_broot = FUNC8(new_size, KM_NOFS);
			ifp->if_broot_bytes = (int)new_size;
			return;
		}

		/*
		 * If there is already an existing if_broot, then we need
		 * to realloc() it and shift the pointers to their new
		 * location.  The records don't change location because
		 * they are kept butted up against the btree block header.
		 */
		cur_max = FUNC13(mp, ifp->if_broot_bytes, 0);
		new_max = cur_max + rec_diff;
		new_size = FUNC3(mp, new_max);
		ifp->if_broot = FUNC10(ifp->if_broot, new_size,
				KM_NOFS);
		op = (char *)FUNC2(mp, ifp->if_broot, 1,
						     ifp->if_broot_bytes);
		np = (char *)FUNC2(mp, ifp->if_broot, 1,
						     (int)new_size);
		ifp->if_broot_bytes = (int)new_size;
		FUNC0(FUNC1(ifp->if_broot) <=
			FUNC7(ip, whichfork));
		FUNC12(np, op, cur_max * (uint)sizeof(xfs_fsblock_t));
		return;
	}

	/*
	 * rec_diff is less than 0.  In this case, we are shrinking the
	 * if_broot buffer.  It must already exist.  If we go to zero
	 * records, just get rid of the root and clear the status bit.
	 */
	FUNC0((ifp->if_broot != NULL) && (ifp->if_broot_bytes > 0));
	cur_max = FUNC13(mp, ifp->if_broot_bytes, 0);
	new_max = cur_max + rec_diff;
	FUNC0(new_max >= 0);
	if (new_max > 0)
		new_size = FUNC3(mp, new_max);
	else
		new_size = 0;
	if (new_size > 0) {
		new_broot = FUNC8(new_size, KM_NOFS);
		/*
		 * First copy over the btree block header.
		 */
		FUNC11(new_broot, ifp->if_broot,
			FUNC4(ip->i_mount));
	} else {
		new_broot = NULL;
		ifp->if_flags &= ~XFS_IFBROOT;
	}

	/*
	 * Only copy the records and pointers if there are any.
	 */
	if (new_max > 0) {
		/*
		 * First copy the records.
		 */
		op = (char *)FUNC5(mp, ifp->if_broot, 1);
		np = (char *)FUNC5(mp, new_broot, 1);
		FUNC11(np, op, new_max * (uint)sizeof(xfs_bmbt_rec_t));

		/*
		 * Then copy the pointers.
		 */
		op = (char *)FUNC2(mp, ifp->if_broot, 1,
						     ifp->if_broot_bytes);
		np = (char *)FUNC2(mp, new_broot, 1,
						     (int)new_size);
		FUNC11(np, op, new_max * (uint)sizeof(xfs_fsblock_t));
	}
	FUNC9(ifp->if_broot);
	ifp->if_broot = new_broot;
	ifp->if_broot_bytes = (int)new_size;
	if (ifp->if_broot)
		FUNC0(FUNC1(ifp->if_broot) <=
			FUNC7(ip, whichfork));
	return;
}