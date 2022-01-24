#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int m_flags; } ;
typedef  TYPE_3__ xfs_mount_t ;
struct TYPE_11__ {int di_format; int di_forkoff; int /*<<< orphan*/  di_version; } ;
struct TYPE_10__ {int if_bytes; int /*<<< orphan*/  if_broot; } ;
struct TYPE_13__ {TYPE_2__ i_d; TYPE_1__ i_df; TYPE_3__* i_mount; } ;
typedef  TYPE_4__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  MINABTPTRS ; 
 int /*<<< orphan*/  MINDBTPTRS ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  XFS_DINODE_FMT_BTREE 129 
 int XFS_DINODE_FMT_DEV ; 
#define  XFS_DINODE_FMT_EXTENTS 128 
 int FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int XFS_MOUNT_ATTR2 ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (TYPE_4__*) ; 

int
FUNC7(xfs_inode_t *dp, int bytes)
{
	int offset;
	int minforkoff;	/* lower limit on valid forkoff locations */
	int maxforkoff;	/* upper limit on valid forkoff locations */
	int dsize;
	xfs_mount_t *mp = dp->i_mount;

	/* rounded down */
	offset = (FUNC3(mp, dp->i_d.di_version) - bytes) >> 3;

	if (dp->i_d.di_format == XFS_DINODE_FMT_DEV) {
		minforkoff = FUNC5(sizeof(xfs_dev_t), 8) >> 3;
		return (offset >= minforkoff) ? minforkoff : 0;
	}

	/*
	 * If the requested numbers of bytes is smaller or equal to the
	 * current attribute fork size we can always proceed.
	 *
	 * Note that if_bytes in the data fork might actually be larger than
	 * the current data fork size is due to delalloc extents. In that
	 * case either the extent count will go down when they are converted
	 * to real extents, or the delalloc conversion will take care of the
	 * literal area rebalancing.
	 */
	if (bytes <= FUNC2(dp))
		return dp->i_d.di_forkoff;

	/*
	 * For attr2 we can try to move the forkoff if there is space in the
	 * literal area, but for the old format we are done if there is no
	 * space in the fixed attribute fork.
	 */
	if (!(mp->m_flags & XFS_MOUNT_ATTR2))
		return 0;

	dsize = dp->i_df.if_bytes;

	switch (dp->i_d.di_format) {
	case XFS_DINODE_FMT_EXTENTS:
		/*
		 * If there is no attr fork and the data fork is extents, 
		 * determine if creating the default attr fork will result
		 * in the extents form migrating to btree. If so, the
		 * minimum offset only needs to be the space required for
		 * the btree root.
		 */
		if (!dp->i_d.di_forkoff && dp->i_df.if_bytes >
		    FUNC6(dp))
			dsize = FUNC1(MINDBTPTRS);
		break;
	case XFS_DINODE_FMT_BTREE:
		/*
		 * If we have a data btree then keep forkoff if we have one,
		 * otherwise we are adding a new attr, so then we set
		 * minforkoff to where the btree root can finish so we have
		 * plenty of room for attrs
		 */
		if (dp->i_d.di_forkoff) {
			if (offset < dp->i_d.di_forkoff)
				return 0;
			return dp->i_d.di_forkoff;
		}
		dsize = FUNC0(mp, dp->i_df.if_broot);
		break;
	}

	/*
	 * A data fork btree root must have space for at least
	 * MINDBTPTRS key/ptr pairs if the data fork is small or empty.
	 */
	minforkoff = FUNC4(dsize, FUNC1(MINDBTPTRS));
	minforkoff = FUNC5(minforkoff, 8) >> 3;

	/* attr fork btree root can have at least this many key/ptr pairs */
	maxforkoff = FUNC3(mp, dp->i_d.di_version) -
			FUNC1(MINABTPTRS);
	maxforkoff = maxforkoff >> 3;	/* rounded down */

	if (offset >= maxforkoff)
		return maxforkoff;
	if (offset >= minforkoff)
		return offset;
	return 0;
}