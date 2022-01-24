#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_ino_t ;
typedef  int /*<<< orphan*/  xfs_extlen_t ;
struct xfs_trans {int /*<<< orphan*/  t_mountp; } ;
struct xfs_name {int /*<<< orphan*/  type; int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {scalar_t__ di_format; } ;
struct xfs_inode {TYPE_3__ i_d; TYPE_2__* i_mount; } ;
struct xfs_da_args {struct xfs_trans* trans; int /*<<< orphan*/  whichfork; int /*<<< orphan*/  total; struct xfs_inode* dp; int /*<<< orphan*/  inumber; int /*<<< orphan*/  hashval; int /*<<< orphan*/  filetype; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  geo; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_mode; } ;
struct TYPE_6__ {TYPE_1__* m_dirnameops; int /*<<< orphan*/  m_dir_geo; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* hashname ) (struct xfs_name*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KM_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (struct xfs_inode*) ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 scalar_t__ XFS_DINODE_FMT_LOCAL ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_da_args*) ; 
 struct xfs_da_args* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_name*) ; 
 int FUNC6 (struct xfs_da_args*) ; 
 int FUNC7 (struct xfs_da_args*,int*) ; 
 int FUNC8 (struct xfs_da_args*,int*) ; 
 int FUNC9 (struct xfs_da_args*) ; 
 int FUNC10 (struct xfs_da_args*) ; 
 int FUNC11 (struct xfs_da_args*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC13(
	struct xfs_trans	*tp,
	struct xfs_inode	*dp,
	struct xfs_name		*name,		/* name of entry to replace */
	xfs_ino_t		inum,		/* new inode number */
	xfs_extlen_t		total)		/* bmap's total block count */
{
	struct xfs_da_args	*args;
	int			rval;
	int			v;		/* type-checking value */

	FUNC0(FUNC1(FUNC2(dp)->i_mode));

	rval = FUNC12(tp->t_mountp, inum);
	if (rval)
		return rval;

	args = FUNC4(sizeof(*args), KM_NOFS);
	if (!args)
		return -ENOMEM;

	args->geo = dp->i_mount->m_dir_geo;
	args->name = name->name;
	args->namelen = name->len;
	args->filetype = name->type;
	args->hashval = dp->i_mount->m_dirnameops->hashname(name);
	args->inumber = inum;
	args->dp = dp;
	args->total = total;
	args->whichfork = XFS_DATA_FORK;
	args->trans = tp;

	if (dp->i_d.di_format == XFS_DINODE_FMT_LOCAL) {
		rval = FUNC11(args);
		goto out_free;
	}

	rval = FUNC7(args, &v);
	if (rval)
		goto out_free;
	if (v) {
		rval = FUNC6(args);
		goto out_free;
	}

	rval = FUNC8(args, &v);
	if (rval)
		goto out_free;
	if (v)
		rval = FUNC9(args);
	else
		rval = FUNC10(args);
out_free:
	FUNC3(args);
	return rval;
}