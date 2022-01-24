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
struct xfs_trans {int /*<<< orphan*/  t_mountp; } ;
struct TYPE_4__ {int /*<<< orphan*/  cui_id; } ;
struct xfs_cui_log_item {TYPE_2__ cui_format; } ;
struct TYPE_3__ {int /*<<< orphan*/  cud_cui_id; } ;
struct xfs_cud_log_item {int /*<<< orphan*/  cud_item; TYPE_1__ cud_format; struct xfs_cui_log_item* cud_cuip; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_LI_CUD ; 
 struct xfs_cud_log_item* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfs_cud_item_ops ; 
 int /*<<< orphan*/  xfs_cud_zone ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_trans*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct xfs_cud_log_item *
FUNC3(
	struct xfs_trans		*tp,
	struct xfs_cui_log_item		*cuip)
{
	struct xfs_cud_log_item		*cudp;

	cudp = FUNC0(xfs_cud_zone, 0);
	FUNC1(tp->t_mountp, &cudp->cud_item, XFS_LI_CUD,
			  &xfs_cud_item_ops);
	cudp->cud_cuip = cuip;
	cudp->cud_format.cud_cui_id = cuip->cui_format.cui_id;

	FUNC2(tp, &cudp->cud_item);
	return cudp;
}