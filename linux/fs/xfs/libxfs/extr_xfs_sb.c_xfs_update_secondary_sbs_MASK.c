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
typedef  int xfs_agnumber_t ;
struct TYPE_2__ {int sb_agcount; } ;
struct xfs_mount {TYPE_1__ m_sb; int /*<<< orphan*/  m_ddev_targp; } ;
struct xfs_buf {int /*<<< orphan*/  b_length; int /*<<< orphan*/ * b_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,int) ; 
 int /*<<< orphan*/  XFS_SB_DADDR ; 
 int /*<<< orphan*/  buffer_list ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_buf*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 struct xfs_buf* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfs_sb_buf_ops ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct xfs_mount*,char*,int,...) ; 

int
FUNC13(
	struct xfs_mount	*mp)
{
	xfs_agnumber_t		agno;
	int			saved_error = 0;
	int			error = 0;
	FUNC1		(buffer_list);

	/* update secondary superblocks. */
	for (agno = 1; agno < mp->m_sb.sb_agcount; agno++) {
		struct xfs_buf		*bp;

		bp = FUNC7(mp->m_ddev_targp,
				 FUNC2(mp, agno, XFS_SB_DADDR),
				 FUNC4(mp, 1));
		/*
		 * If we get an error reading or writing alternate superblocks,
		 * continue.  xfs_repair chooses the "best" superblock based
		 * on most matches; if we break early, we'll leave more
		 * superblocks un-updated than updated, and xfs_repair may
		 * pick them over the properly-updated primary.
		 */
		if (!bp) {
			FUNC12(mp,
		"error allocating secondary superblock for ag %d",
				agno);
			if (!saved_error)
				saved_error = -ENOMEM;
			continue;
		}

		bp->b_ops = &xfs_sb_buf_ops;
		FUNC8(bp);
		FUNC10(bp, 0, FUNC0(bp->b_length));
		FUNC11(FUNC3(bp), &mp->m_sb);
		FUNC5(bp, &buffer_list);
		FUNC9(bp);

		/* don't hold too many buffers at once */
		if (agno % 16)
			continue;

		error = FUNC6(&buffer_list);
		if (error) {
			FUNC12(mp,
		"write error %d updating a secondary superblock near ag %d",
				error, agno);
			if (!saved_error)
				saved_error = error;
			continue;
		}
	}
	error = FUNC6(&buffer_list);
	if (error) {
		FUNC12(mp,
		"write error %d updating a secondary superblock near ag %d",
			error, agno);
	}

	return saved_error ? saved_error : error;
}