#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  t_mountp; } ;
typedef  TYPE_2__ xfs_trans_t ;
struct TYPE_11__ {int /*<<< orphan*/  i_ino; TYPE_1__* i_mount; } ;
typedef  TYPE_3__ xfs_inode_t ;
struct xfs_da_args {TYPE_2__* trans; TYPE_3__* dp; int /*<<< orphan*/  geo; } ;
struct TYPE_12__ {int /*<<< orphan*/  i_mode; } ;
struct TYPE_9__ {int /*<<< orphan*/  m_dir_geo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KM_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_da_args*) ; 
 struct xfs_da_args* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xfs_da_args*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(
	xfs_trans_t	*tp,
	xfs_inode_t	*dp,
	xfs_inode_t	*pdp)
{
	struct xfs_da_args *args;
	int		error;

	FUNC0(FUNC1(FUNC2(dp)->i_mode));
	error = FUNC6(tp->t_mountp, pdp->i_ino);
	if (error)
		return error;

	args = FUNC4(sizeof(*args), KM_NOFS);
	if (!args)
		return -ENOMEM;

	args->geo = dp->i_mount->m_dir_geo;
	args->dp = dp;
	args->trans = tp;
	error = FUNC5(args, pdp->i_ino);
	FUNC3(args);
	return error;
}