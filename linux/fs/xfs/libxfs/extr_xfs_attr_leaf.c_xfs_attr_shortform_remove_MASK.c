#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int m_flags; } ;
typedef  TYPE_5__ xfs_mount_t ;
struct TYPE_23__ {scalar_t__ di_format; int di_forkoff; } ;
struct TYPE_25__ {TYPE_4__ i_d; TYPE_2__* i_afp; TYPE_5__* i_mount; } ;
typedef  TYPE_6__ xfs_inode_t ;
struct TYPE_26__ {scalar_t__ namelen; int op_flags; int /*<<< orphan*/  trans; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; TYPE_6__* dp; } ;
typedef  TYPE_7__ xfs_da_args_t ;
struct TYPE_22__ {int count; int /*<<< orphan*/  totsize; } ;
struct TYPE_27__ {TYPE_3__ hdr; TYPE_9__* list; } ;
typedef  TYPE_8__ xfs_attr_shortform_t ;
typedef  int /*<<< orphan*/  xfs_attr_sf_hdr_t ;
struct TYPE_28__ {scalar_t__ namelen; int /*<<< orphan*/  flags; int /*<<< orphan*/  nameval; } ;
typedef  TYPE_9__ xfs_attr_sf_entry_t ;
struct TYPE_20__ {scalar_t__ if_data; } ;
struct TYPE_21__ {TYPE_1__ if_u1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOATTR ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 int FUNC1 (TYPE_9__*) ; 
 TYPE_9__* FUNC2 (TYPE_9__*) ; 
 int XFS_DA_OP_ADDNAME ; 
 scalar_t__ XFS_DINODE_FMT_BTREE ; 
 int XFS_ILOG_ADATA ; 
 int XFS_ILOG_CORE ; 
 int XFS_MOUNT_ATTR2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_6__*,int) ; 

int
FUNC14(xfs_da_args_t *args)
{
	xfs_attr_shortform_t *sf;
	xfs_attr_sf_entry_t *sfe;
	int base, size=0, end, totsize, i;
	xfs_mount_t *mp;
	xfs_inode_t *dp;

	FUNC7(args);

	dp = args->dp;
	mp = dp->i_mount;
	base = sizeof(xfs_attr_sf_hdr_t);
	sf = (xfs_attr_shortform_t *)dp->i_afp->if_u1.if_data;
	sfe = &sf->list[0];
	end = sf->hdr.count;
	for (i = 0; i < end; sfe = FUNC2(sfe),
					base += size, i++) {
		size = FUNC1(sfe);
		if (sfe->namelen != args->namelen)
			continue;
		if (FUNC5(sfe->nameval, args->name, args->namelen) != 0)
			continue;
		if (!FUNC9(args->flags, sfe->flags))
			continue;
		break;
	}
	if (i == end)
		return -ENOATTR;

	/*
	 * Fix up the attribute fork data, covering the hole
	 */
	end = base + size;
	totsize = FUNC4(sf->hdr.totsize);
	if (end != totsize)
		FUNC6(&((char *)sf)[base], &((char *)sf)[end], totsize - end);
	sf->hdr.count--;
	FUNC3(&sf->hdr.totsize, -size);

	/*
	 * Fix up the start offset of the attribute fork
	 */
	totsize -= size;
	if (totsize == sizeof(xfs_attr_sf_hdr_t) &&
	    (mp->m_flags & XFS_MOUNT_ATTR2) &&
	    (dp->i_d.di_format != XFS_DINODE_FMT_BTREE) &&
	    !(args->op_flags & XFS_DA_OP_ADDNAME)) {
		FUNC8(dp, args->trans);
	} else {
		FUNC11(dp, -size, XFS_ATTR_FORK);
		dp->i_d.di_forkoff = FUNC10(dp, totsize);
		FUNC0(dp->i_d.di_forkoff);
		FUNC0(totsize > sizeof(xfs_attr_sf_hdr_t) ||
				(args->op_flags & XFS_DA_OP_ADDNAME) ||
				!(mp->m_flags & XFS_MOUNT_ATTR2) ||
				dp->i_d.di_format == XFS_DINODE_FMT_BTREE);
		FUNC13(args->trans, dp,
					XFS_ILOG_CORE | XFS_ILOG_ADATA);
	}

	FUNC12(mp, args->trans);

	return 0;
}