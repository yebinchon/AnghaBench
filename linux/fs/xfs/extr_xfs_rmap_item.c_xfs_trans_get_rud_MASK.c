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
struct TYPE_4__ {int /*<<< orphan*/  rui_id; } ;
struct xfs_rui_log_item {TYPE_2__ rui_format; } ;
struct TYPE_3__ {int /*<<< orphan*/  rud_rui_id; } ;
struct xfs_rud_log_item {int /*<<< orphan*/  rud_item; TYPE_1__ rud_format; struct xfs_rui_log_item* rud_ruip; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_LI_RUD ; 
 struct xfs_rud_log_item* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfs_rud_item_ops ; 
 int /*<<< orphan*/  xfs_rud_zone ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_trans*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct xfs_rud_log_item *
FUNC3(
	struct xfs_trans		*tp,
	struct xfs_rui_log_item		*ruip)
{
	struct xfs_rud_log_item		*rudp;

	rudp = FUNC0(xfs_rud_zone, 0);
	FUNC1(tp->t_mountp, &rudp->rud_item, XFS_LI_RUD,
			  &xfs_rud_item_ops);
	rudp->rud_ruip = ruip;
	rudp->rud_format.rud_rui_id = ruip->rui_format.rui_id;

	FUNC2(tp, &rudp->rud_item);
	return rudp;
}