#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_11__ {scalar_t__ di_format; } ;
struct TYPE_12__ {TYPE_2__ i_d; TYPE_7__* i_mount; } ;
typedef  TYPE_3__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_ino_t ;
struct xfs_name {int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
struct xfs_da_args {int /*<<< orphan*/  valuelen; int /*<<< orphan*/  value; int /*<<< orphan*/  inumber; int /*<<< orphan*/  op_flags; int /*<<< orphan*/ * trans; int /*<<< orphan*/  whichfork; TYPE_3__* dp; int /*<<< orphan*/  hashval; int /*<<< orphan*/  filetype; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  geo; } ;
struct TYPE_14__ {int /*<<< orphan*/  i_mode; } ;
struct TYPE_13__ {TYPE_1__* m_dirnameops; int /*<<< orphan*/  m_dir_geo; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* hashname ) (struct xfs_name*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EEXIST ; 
 int /*<<< orphan*/  KM_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int /*<<< orphan*/  XFS_DA_OP_CILOOKUP ; 
 int /*<<< orphan*/  XFS_DA_OP_OKNOENT ; 
 scalar_t__ XFS_DINODE_FMT_LOCAL ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_da_args*) ; 
 struct xfs_da_args* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_name*) ; 
 int FUNC7 (struct xfs_da_args*) ; 
 int FUNC8 (struct xfs_da_args*,int*) ; 
 int FUNC9 (struct xfs_da_args*,int*) ; 
 int FUNC10 (struct xfs_da_args*) ; 
 int FUNC11 (struct xfs_da_args*) ; 
 int FUNC12 (struct xfs_da_args*) ; 
 int FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  xs_dir_lookup ; 

int
FUNC15(
	xfs_trans_t	*tp,
	xfs_inode_t	*dp,
	struct xfs_name	*name,
	xfs_ino_t	*inum,		/* out: inode number */
	struct xfs_name *ci_name)	/* out: actual name if CI match */
{
	struct xfs_da_args *args;
	int		rval;
	int		v;		/* type-checking value */
	int		lock_mode;

	FUNC0(FUNC1(FUNC2(dp)->i_mode));
	FUNC3(dp->i_mount, xs_dir_lookup);

	/*
	 * We need to use KM_NOFS here so that lockdep will not throw false
	 * positive deadlock warnings on a non-transactional lookup path. It is
	 * safe to recurse into inode recalim in that case, but lockdep can't
	 * easily be taught about it. Hence KM_NOFS avoids having to add more
	 * lockdep Doing this avoids having to add a bunch of lockdep class
	 * annotations into the reclaim path for the ilock.
	 */
	args = FUNC5(sizeof(*args), KM_NOFS);
	args->geo = dp->i_mount->m_dir_geo;
	args->name = name->name;
	args->namelen = name->len;
	args->filetype = name->type;
	args->hashval = dp->i_mount->m_dirnameops->hashname(name);
	args->dp = dp;
	args->whichfork = XFS_DATA_FORK;
	args->trans = tp;
	args->op_flags = XFS_DA_OP_OKNOENT;
	if (ci_name)
		args->op_flags |= XFS_DA_OP_CILOOKUP;

	lock_mode = FUNC13(dp);
	if (dp->i_d.di_format == XFS_DINODE_FMT_LOCAL) {
		rval = FUNC12(args);
		goto out_check_rval;
	}

	rval = FUNC8(args, &v);
	if (rval)
		goto out_free;
	if (v) {
		rval = FUNC7(args);
		goto out_check_rval;
	}

	rval = FUNC9(args, &v);
	if (rval)
		goto out_free;
	if (v)
		rval = FUNC10(args);
	else
		rval = FUNC11(args);

out_check_rval:
	if (rval == -EEXIST)
		rval = 0;
	if (!rval) {
		*inum = args->inumber;
		if (ci_name) {
			ci_name->name = args->value;
			ci_name->len = args->valuelen;
		}
	}
out_free:
	FUNC14(dp, lock_mode);
	FUNC4(args);
	return rval;
}