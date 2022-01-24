#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_fileoff_t ;
typedef  int /*<<< orphan*/  xfs_daddr_t ;
typedef  scalar_t__ xfs_dablk_t ;
struct xfs_mount {int /*<<< orphan*/  m_ddev_targp; } ;
struct xfs_da_args {int rmtblkcnt; TYPE_1__* dp; int /*<<< orphan*/  trans; scalar_t__ rmtblkno; } ;
struct xfs_buf {int dummy; } ;
struct xfs_bmbt_irec {scalar_t__ br_startblock; scalar_t__ br_blockcount; } ;
struct TYPE_4__ {struct xfs_mount* i_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DELAYSTARTBLOCK ; 
 scalar_t__ HOLESTARTBLOCK ; 
 int /*<<< orphan*/  XBF_TRYLOCK ; 
 int /*<<< orphan*/  XFS_BMAPI_ATTRFORK ; 
 int FUNC1 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_da_args*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,struct xfs_bmbt_irec*,int*,int /*<<< orphan*/ ) ; 
 struct xfs_buf* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_buf*) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,int,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int
FUNC11(
	struct xfs_da_args	*args)
{
	struct xfs_mount	*mp = args->dp->i_mount;
	xfs_dablk_t		lblkno;
	int			blkcnt;
	int			error;
	int			done;

	FUNC3(args);

	/*
	 * Roll through the "value", invalidating the attribute value's blocks.
	 */
	lblkno = args->rmtblkno;
	blkcnt = args->rmtblkcnt;
	while (blkcnt > 0) {
		struct xfs_bmbt_irec	map;
		struct xfs_buf		*bp;
		xfs_daddr_t		dblkno;
		int			dblkcnt;
		int			nmap;

		/*
		 * Try to remember where we decided to put the value.
		 */
		nmap = 1;
		error = FUNC4(args->dp, (xfs_fileoff_t)lblkno,
				       blkcnt, &map, &nmap, XFS_BMAPI_ATTRFORK);
		if (error)
			return error;
		FUNC0(nmap == 1);
		FUNC0((map.br_startblock != DELAYSTARTBLOCK) &&
		       (map.br_startblock != HOLESTARTBLOCK));

		dblkno = FUNC2(mp, map.br_startblock),
		dblkcnt = FUNC1(mp, map.br_blockcount);

		/*
		 * If the "remote" value is in the cache, remove it.
		 */
		bp = FUNC5(mp->m_ddev_targp, dblkno, dblkcnt, XBF_TRYLOCK);
		if (bp) {
			FUNC7(bp);
			FUNC6(bp);
			bp = NULL;
		}

		lblkno += map.br_blockcount;
		blkcnt -= map.br_blockcount;
	}

	/*
	 * Keep de-allocating extents until the remote-value region is gone.
	 */
	lblkno = args->rmtblkno;
	blkcnt = args->rmtblkcnt;
	done = 0;
	while (!done) {
		error = FUNC8(args->trans, args->dp, lblkno, blkcnt,
				    XFS_BMAPI_ATTRFORK, 1, &done);
		if (error)
			return error;
		error = FUNC9(&args->trans);
		if (error)
			return error;

		/*
		 * Close out trans and start the next one in the chain.
		 */
		error = FUNC10(&args->trans, args->dp);
		if (error)
			return error;
	}
	return 0;
}