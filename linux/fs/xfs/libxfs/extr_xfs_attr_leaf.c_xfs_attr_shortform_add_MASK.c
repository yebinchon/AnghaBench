#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_mount_t ;
struct TYPE_14__ {int di_forkoff; } ;
struct TYPE_17__ {struct xfs_ifork* i_afp; TYPE_1__ i_d; int /*<<< orphan*/ * i_mount; } ;
typedef  TYPE_4__ xfs_inode_t ;
struct TYPE_18__ {size_t namelen; size_t valuelen; int /*<<< orphan*/  trans; int /*<<< orphan*/  value; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; TYPE_4__* dp; } ;
typedef  TYPE_5__ xfs_da_args_t ;
struct TYPE_16__ {int count; int /*<<< orphan*/  totsize; } ;
struct TYPE_19__ {TYPE_3__ hdr; TYPE_7__* list; } ;
typedef  TYPE_6__ xfs_attr_shortform_t ;
struct TYPE_20__ {size_t namelen; size_t valuelen; int /*<<< orphan*/ * nameval; int /*<<< orphan*/  flags; } ;
typedef  TYPE_7__ xfs_attr_sf_entry_t ;
struct TYPE_15__ {scalar_t__ if_data; } ;
struct xfs_ifork {int if_flags; TYPE_2__ if_u1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (size_t,size_t) ; 
 TYPE_7__* FUNC3 (TYPE_7__*) ; 
 int XFS_IFINLINE ; 
 int XFS_ILOG_ADATA ; 
 int XFS_ILOG_CORE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 

void
FUNC12(xfs_da_args_t *args, int forkoff)
{
	xfs_attr_shortform_t *sf;
	xfs_attr_sf_entry_t *sfe;
	int i, offset, size;
	xfs_mount_t *mp;
	xfs_inode_t *dp;
	struct xfs_ifork *ifp;

	FUNC7(args);

	dp = args->dp;
	mp = dp->i_mount;
	dp->i_d.di_forkoff = forkoff;

	ifp = dp->i_afp;
	FUNC0(ifp->if_flags & XFS_IFINLINE);
	sf = (xfs_attr_shortform_t *)ifp->if_u1.if_data;
	sfe = &sf->list[0];
	for (i = 0; i < sf->hdr.count; sfe = FUNC3(sfe), i++) {
#ifdef DEBUG
		if (sfe->namelen != args->namelen)
			continue;
		if (memcmp(args->name, sfe->nameval, args->namelen) != 0)
			continue;
		if (!xfs_attr_namesp_match(args->flags, sfe->flags))
			continue;
		ASSERT(0);
#endif
	}

	offset = (char *)sfe - (char *)sf;
	size = FUNC2(args->namelen, args->valuelen);
	FUNC9(dp, size, XFS_ATTR_FORK);
	sf = (xfs_attr_shortform_t *)ifp->if_u1.if_data;
	sfe = (xfs_attr_sf_entry_t *)((char *)sf + offset);

	sfe->namelen = args->namelen;
	sfe->valuelen = args->valuelen;
	sfe->flags = FUNC1(args->flags);
	FUNC6(sfe->nameval, args->name, args->namelen);
	FUNC6(&sfe->nameval[args->namelen], args->value, args->valuelen);
	sf->hdr.count++;
	FUNC4(&sf->hdr.totsize, size);
	FUNC11(args->trans, dp, XFS_ILOG_CORE | XFS_ILOG_ADATA);

	FUNC10(mp, args->trans);
}