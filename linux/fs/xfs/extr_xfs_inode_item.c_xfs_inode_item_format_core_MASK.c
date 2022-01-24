#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xfs_log_vec {int dummy; } ;
struct xfs_log_iovec {int dummy; } ;
struct xfs_log_dinode {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  di_version; } ;
struct xfs_inode {TYPE_3__ i_d; TYPE_2__* i_itemp; } ;
struct TYPE_4__ {int /*<<< orphan*/  li_lsn; } ;
struct TYPE_5__ {TYPE_1__ ili_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  XLOG_REG_TYPE_ICORE ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_inode*,struct xfs_log_dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_log_vec*,struct xfs_log_iovec*,int /*<<< orphan*/ ) ; 
 struct xfs_log_dinode* FUNC3 (struct xfs_log_vec*,struct xfs_log_iovec**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(
	struct xfs_inode	*ip,
	struct xfs_log_vec	*lv,
	struct xfs_log_iovec	**vecp)
{
	struct xfs_log_dinode	*dic;

	dic = FUNC3(lv, vecp, XLOG_REG_TYPE_ICORE);
	FUNC0(ip, dic, ip->i_itemp->ili_item.li_lsn);
	FUNC2(lv, *vecp, FUNC1(ip->i_d.di_version));
}