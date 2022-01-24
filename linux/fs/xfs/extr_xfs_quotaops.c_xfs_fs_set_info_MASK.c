#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xfs_mount {int dummy; } ;
struct super_block {int dummy; } ;
struct qc_info {int i_fieldmask; int /*<<< orphan*/  i_rt_spc_warnlimit; int /*<<< orphan*/  i_spc_warnlimit; int /*<<< orphan*/  i_ino_warnlimit; int /*<<< orphan*/  i_rt_spc_timelimit; int /*<<< orphan*/  i_ino_timelimit; int /*<<< orphan*/  i_spc_timelimit; } ;
struct qc_dqblk {int d_fieldmask; int /*<<< orphan*/  d_rt_spc_warns; int /*<<< orphan*/  d_spc_warns; int /*<<< orphan*/  d_ino_warns; int /*<<< orphan*/  d_rt_spc_timer; int /*<<< orphan*/  d_ino_timer; int /*<<< orphan*/  d_spc_timer; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSYS ; 
 int EROFS ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*) ; 
 struct xfs_mount* FUNC2 (struct super_block*) ; 
 int XFS_QC_SETINFO_MASK ; 
 scalar_t__ FUNC3 (struct super_block*) ; 
 int FUNC4 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qc_dqblk*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(
	struct super_block	*sb,
	int			type,
	struct qc_info		*info)
{
	struct xfs_mount *mp = FUNC2(sb);
	struct qc_dqblk newlim;

	if (FUNC3(sb))
		return -EROFS;
	if (!FUNC1(mp))
		return -ENOSYS;
	if (!FUNC0(mp))
		return -ESRCH;
	if (info->i_fieldmask & ~XFS_QC_SETINFO_MASK)
		return -EINVAL;
	if ((info->i_fieldmask & XFS_QC_SETINFO_MASK) == 0)
		return 0;

	newlim.d_fieldmask = info->i_fieldmask;
	newlim.d_spc_timer = info->i_spc_timelimit;
	newlim.d_ino_timer = info->i_ino_timelimit;
	newlim.d_rt_spc_timer = info->i_rt_spc_timelimit;
	newlim.d_ino_warns = info->i_ino_warnlimit;
	newlim.d_spc_warns = info->i_spc_warnlimit;
	newlim.d_rt_spc_warns = info->i_rt_spc_warnlimit;

	return FUNC4(mp, 0, FUNC5(type), &newlim);
}