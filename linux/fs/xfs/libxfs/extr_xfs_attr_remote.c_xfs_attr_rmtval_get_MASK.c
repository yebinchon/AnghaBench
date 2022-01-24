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
typedef  int /*<<< orphan*/  xfs_fileoff_t ;
typedef  int /*<<< orphan*/  xfs_daddr_t ;
typedef  scalar_t__ xfs_dablk_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct xfs_mount {int /*<<< orphan*/  m_ddev_targp; } ;
struct xfs_da_args {int rmtblkcnt; int flags; int rmtvaluelen; int valuelen; int /*<<< orphan*/  trans; TYPE_1__* dp; int /*<<< orphan*/ * value; scalar_t__ rmtblkno; } ;
struct xfs_buf {int dummy; } ;
struct xfs_bmbt_irec {scalar_t__ br_startblock; scalar_t__ br_blockcount; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_ino; struct xfs_mount* i_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ATTR_KERNOVAL ; 
 int ATTR_RMTVALUE_MAPSIZE ; 
 scalar_t__ DELAYSTARTBLOCK ; 
 scalar_t__ HOLESTARTBLOCK ; 
 int /*<<< orphan*/  XFS_BMAPI_ATTRFORK ; 
 int FUNC1 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_da_args*) ; 
 int /*<<< orphan*/  xfs_attr3_rmt_buf_ops ; 
 int FUNC4 (struct xfs_mount*,struct xfs_buf*,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ **) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,struct xfs_bmbt_irec*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct xfs_buf*) ; 
 int FUNC7 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct xfs_buf**,int /*<<< orphan*/ *) ; 

int
FUNC8(
	struct xfs_da_args	*args)
{
	struct xfs_bmbt_irec	map[ATTR_RMTVALUE_MAPSIZE];
	struct xfs_mount	*mp = args->dp->i_mount;
	struct xfs_buf		*bp;
	xfs_dablk_t		lblkno = args->rmtblkno;
	uint8_t			*dst = args->value;
	int			valuelen;
	int			nmap;
	int			error;
	int			blkcnt = args->rmtblkcnt;
	int			i;
	int			offset = 0;

	FUNC3(args);

	FUNC0(!(args->flags & ATTR_KERNOVAL));
	FUNC0(args->rmtvaluelen == args->valuelen);

	valuelen = args->rmtvaluelen;
	while (valuelen > 0) {
		nmap = ATTR_RMTVALUE_MAPSIZE;
		error = FUNC5(args->dp, (xfs_fileoff_t)lblkno,
				       blkcnt, map, &nmap,
				       XFS_BMAPI_ATTRFORK);
		if (error)
			return error;
		FUNC0(nmap >= 1);

		for (i = 0; (i < nmap) && (valuelen > 0); i++) {
			xfs_daddr_t	dblkno;
			int		dblkcnt;

			FUNC0((map[i].br_startblock != DELAYSTARTBLOCK) &&
			       (map[i].br_startblock != HOLESTARTBLOCK));
			dblkno = FUNC2(mp, map[i].br_startblock);
			dblkcnt = FUNC1(mp, map[i].br_blockcount);
			error = FUNC7(mp, args->trans,
						   mp->m_ddev_targp,
						   dblkno, dblkcnt, 0, &bp,
						   &xfs_attr3_rmt_buf_ops);
			if (error)
				return error;

			error = FUNC4(mp, bp, args->dp->i_ino,
							&offset, &valuelen,
							&dst);
			FUNC6(args->trans, bp);
			if (error)
				return error;

			/* roll attribute extent map forwards */
			lblkno += map[i].br_blockcount;
			blkcnt -= map[i].br_blockcount;
		}
	}
	FUNC0(valuelen == 0);
	return 0;
}