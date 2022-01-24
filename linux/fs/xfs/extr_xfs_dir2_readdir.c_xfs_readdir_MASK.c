#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xfs_trans {int dummy; } ;
struct TYPE_5__ {scalar_t__ di_format; } ;
struct xfs_inode {TYPE_1__ i_d; TYPE_2__* i_mount; } ;
struct xfs_da_args {struct xfs_trans* trans; int /*<<< orphan*/  geo; struct xfs_inode* dp; int /*<<< orphan*/ * member_0; } ;
struct dir_context {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  i_mode; } ;
struct TYPE_6__ {int /*<<< orphan*/  m_dir_geo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (struct xfs_inode*) ; 
 scalar_t__ XFS_DINODE_FMT_LOCAL ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_inode*) ; 
 int FUNC6 (struct xfs_da_args*,struct dir_context*) ; 
 int FUNC7 (struct xfs_da_args*,int*) ; 
 int FUNC8 (struct xfs_da_args*,struct dir_context*,size_t) ; 
 int FUNC9 (struct xfs_da_args*,struct dir_context*) ; 
 int /*<<< orphan*/  xs_dir_getdents ; 

int
FUNC10(
	struct xfs_trans	*tp,
	struct xfs_inode	*dp,
	struct dir_context	*ctx,
	size_t			bufsize)
{
	struct xfs_da_args	args = { NULL };
	int			rval;
	int			v;

	FUNC5(dp);

	if (FUNC3(dp->i_mount))
		return -EIO;

	FUNC0(FUNC1(FUNC2(dp)->i_mode));
	FUNC4(dp->i_mount, xs_dir_getdents);

	args.dp = dp;
	args.geo = dp->i_mount->m_dir_geo;
	args.trans = tp;

	if (dp->i_d.di_format == XFS_DINODE_FMT_LOCAL)
		rval = FUNC9(&args, ctx);
	else if ((rval = FUNC7(&args, &v)))
		;
	else if (v)
		rval = FUNC6(&args, ctx);
	else
		rval = FUNC8(&args, ctx, bufsize);

	return rval;
}