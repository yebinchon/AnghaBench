#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xfs_attr_leafblock {int dummy; } ;
typedef  struct xfs_attr_leafblock xfs_attr_leafblock_t ;
struct TYPE_5__ {scalar_t__ di_format; } ;
struct xfs_inode {TYPE_2__ i_d; TYPE_1__* i_mount; } ;
struct xfs_da_args {size_t namelen; int /*<<< orphan*/  flags; int /*<<< orphan*/  hashval; int /*<<< orphan*/  valuelen; int /*<<< orphan*/ * value; int /*<<< orphan*/ * name; int /*<<< orphan*/  op_flags; int /*<<< orphan*/  trans; int /*<<< orphan*/  whichfork; int /*<<< orphan*/  total; struct xfs_inode* dp; TYPE_3__* geo; } ;
struct xfs_buf {char* b_addr; } ;
struct xfs_attr_leaf_name_local {size_t namelen; int /*<<< orphan*/  valuelen; int /*<<< orphan*/ * nameval; } ;
struct xfs_attr_leaf_entry {int flags; int /*<<< orphan*/  hashval; int /*<<< orphan*/  nameidx; } ;
struct xfs_attr3_icleaf_hdr {int count; } ;
typedef  int /*<<< orphan*/  nargs ;
struct TYPE_6__ {int blksize; } ;
struct TYPE_4__ {int m_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 int XFS_ATTR_INCOMPLETE ; 
 int XFS_ATTR_LOCAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  XFS_DA_OP_OKNOENT ; 
 scalar_t__ XFS_DINODE_FMT_BTREE ; 
 int XFS_MOUNT_ATTR2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_da_args*) ; 
 struct xfs_attr_leaf_entry* FUNC9 (struct xfs_attr_leafblock*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,struct xfs_attr3_icleaf_hdr*,struct xfs_attr_leafblock*) ; 
 struct xfs_attr_leaf_name_local* FUNC11 (struct xfs_attr_leafblock*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct xfs_da_args*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct xfs_da_args*) ; 
 int FUNC15 (struct xfs_da_args*,int /*<<< orphan*/ ,struct xfs_buf*) ; 

int
FUNC16(
	struct xfs_buf		*bp,
	struct xfs_da_args	*args,
	int			forkoff)
{
	struct xfs_attr_leafblock *leaf;
	struct xfs_attr3_icleaf_hdr ichdr;
	struct xfs_attr_leaf_entry *entry;
	struct xfs_attr_leaf_name_local *name_loc;
	struct xfs_da_args	nargs;
	struct xfs_inode	*dp = args->dp;
	char			*tmpbuffer;
	int			error;
	int			i;

	FUNC8(args);

	tmpbuffer = FUNC4(args->geo->blksize, 0);
	if (!tmpbuffer)
		return -ENOMEM;

	FUNC6(tmpbuffer, bp->b_addr, args->geo->blksize);

	leaf = (xfs_attr_leafblock_t *)tmpbuffer;
	FUNC10(args->geo, &ichdr, leaf);
	entry = FUNC9(leaf);

	/* XXX (dgc): buffer is about to be marked stale - why zero it? */
	FUNC7(bp->b_addr, 0, args->geo->blksize);

	/*
	 * Clean out the prior contents of the attribute list.
	 */
	error = FUNC15(args, 0, bp);
	if (error)
		goto out;

	if (forkoff == -1) {
		FUNC0(dp->i_mount->m_flags & XFS_MOUNT_ATTR2);
		FUNC0(dp->i_d.di_format != XFS_DINODE_FMT_BTREE);
		FUNC12(dp, args->trans);
		goto out;
	}

	FUNC14(args);

	/*
	 * Copy the attributes
	 */
	FUNC7((char *)&nargs, 0, sizeof(nargs));
	nargs.geo = args->geo;
	nargs.dp = dp;
	nargs.total = args->total;
	nargs.whichfork = XFS_ATTR_FORK;
	nargs.trans = args->trans;
	nargs.op_flags = XFS_DA_OP_OKNOENT;

	for (i = 0; i < ichdr.count; entry++, i++) {
		if (entry->flags & XFS_ATTR_INCOMPLETE)
			continue;	/* don't copy partial entries */
		if (!entry->nameidx)
			continue;
		FUNC0(entry->flags & XFS_ATTR_LOCAL);
		name_loc = FUNC11(leaf, i);
		nargs.name = name_loc->nameval;
		nargs.namelen = name_loc->namelen;
		nargs.value = &name_loc->nameval[nargs.namelen];
		nargs.valuelen = FUNC2(name_loc->valuelen);
		nargs.hashval = FUNC3(entry->hashval);
		nargs.flags = FUNC1(entry->flags);
		FUNC13(&nargs, forkoff);
	}
	error = 0;

out:
	FUNC5(tmpbuffer);
	return error;
}