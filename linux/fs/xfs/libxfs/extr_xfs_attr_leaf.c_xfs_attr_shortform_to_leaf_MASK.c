#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xfs_dablk_t ;
struct TYPE_4__ {int count; int /*<<< orphan*/  totsize; } ;
struct xfs_attr_shortform {TYPE_2__ hdr; struct xfs_attr_sf_entry* list; } ;
typedef  struct xfs_attr_shortform xfs_attr_shortform_t ;
struct xfs_inode {struct xfs_ifork* i_afp; } ;
struct TYPE_3__ {scalar_t__ if_data; } ;
struct xfs_ifork {TYPE_1__ if_u1; } ;
struct xfs_da_args {size_t namelen; int /*<<< orphan*/  flags; int /*<<< orphan*/  hashval; int /*<<< orphan*/  valuelen; int /*<<< orphan*/ * value; int /*<<< orphan*/ * name; int /*<<< orphan*/  op_flags; int /*<<< orphan*/  trans; int /*<<< orphan*/  whichfork; int /*<<< orphan*/  total; int /*<<< orphan*/  geo; struct xfs_inode* dp; } ;
struct xfs_buf {int dummy; } ;
struct xfs_attr_sf_entry {size_t namelen; int /*<<< orphan*/  flags; int /*<<< orphan*/ * nameval; int /*<<< orphan*/  valuelen; } ;
typedef  int /*<<< orphan*/  nargs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOATTR ; 
 int ENOSPC ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct xfs_attr_sf_entry* FUNC2 (struct xfs_attr_sf_entry*) ; 
 int /*<<< orphan*/  XFS_DA_OP_OKNOENT ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_da_args*) ; 
 int FUNC9 (struct xfs_buf*,struct xfs_da_args*) ; 
 int FUNC10 (struct xfs_da_args*,scalar_t__,struct xfs_buf**) ; 
 int FUNC11 (struct xfs_buf*,struct xfs_da_args*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct xfs_da_args*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct xfs_inode*,int,int /*<<< orphan*/ ) ; 

int
FUNC16(
	struct xfs_da_args		*args,
	struct xfs_buf			**leaf_bp)
{
	struct xfs_inode		*dp;
	struct xfs_attr_shortform	*sf;
	struct xfs_attr_sf_entry	*sfe;
	struct xfs_da_args		nargs;
	char				*tmpbuffer;
	int				error, i, size;
	xfs_dablk_t			blkno;
	struct xfs_buf			*bp;
	struct xfs_ifork		*ifp;

	FUNC8(args);

	dp = args->dp;
	ifp = dp->i_afp;
	sf = (xfs_attr_shortform_t *)ifp->if_u1.if_data;
	size = FUNC3(sf->hdr.totsize);
	tmpbuffer = FUNC4(size, 0);
	FUNC0(tmpbuffer != NULL);
	FUNC6(tmpbuffer, ifp->if_u1.if_data, size);
	sf = (xfs_attr_shortform_t *)tmpbuffer;

	FUNC15(dp, -size, XFS_ATTR_FORK);
	FUNC12(args->trans, dp, XFS_ATTR_FORK);

	bp = NULL;
	error = FUNC13(args, &blkno);
	if (error)
		goto out;

	FUNC0(blkno == 0);
	error = FUNC10(args, blkno, &bp);
	if (error)
		goto out;

	FUNC7((char *)&nargs, 0, sizeof(nargs));
	nargs.dp = dp;
	nargs.geo = args->geo;
	nargs.total = args->total;
	nargs.whichfork = XFS_ATTR_FORK;
	nargs.trans = args->trans;
	nargs.op_flags = XFS_DA_OP_OKNOENT;

	sfe = &sf->list[0];
	for (i = 0; i < sf->hdr.count; i++) {
		nargs.name = sfe->nameval;
		nargs.namelen = sfe->namelen;
		nargs.value = &sfe->nameval[nargs.namelen];
		nargs.valuelen = sfe->valuelen;
		nargs.hashval = FUNC14(sfe->nameval,
						sfe->namelen);
		nargs.flags = FUNC1(sfe->flags);
		error = FUNC11(bp, &nargs); /* set a->index */
		FUNC0(error == -ENOATTR);
		error = FUNC9(bp, &nargs);
		FUNC0(error != -ENOSPC);
		if (error)
			goto out;
		sfe = FUNC2(sfe);
	}
	error = 0;
	*leaf_bp = bp;
out:
	FUNC5(tmpbuffer);
	return error;
}