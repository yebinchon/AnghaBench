#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int xfs_agnumber_t ;
typedef  unsigned int xfs_agblock_t ;
struct xfs_trans {int /*<<< orphan*/  t_flags; int /*<<< orphan*/  t_mountp; } ;
struct TYPE_5__ {int /*<<< orphan*/  li_flags; } ;
struct TYPE_4__ {int icl_size; void* icl_gen; void* icl_length; void* icl_isize; void* icl_count; void* icl_agbno; void* icl_ag; int /*<<< orphan*/  icl_type; } ;
struct xfs_icreate_item {TYPE_2__ ic_item; TYPE_1__ ic_format; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_LI_DIRTY ; 
 int /*<<< orphan*/  XFS_LI_ICREATE ; 
 int /*<<< orphan*/  XFS_TRANS_DIRTY ; 
 void* FUNC0 (unsigned int) ; 
 struct xfs_icreate_item* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfs_icreate_item_ops ; 
 int /*<<< orphan*/  xfs_icreate_zone ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_trans*,TYPE_2__*) ; 

void
FUNC5(
	struct xfs_trans	*tp,
	xfs_agnumber_t		agno,
	xfs_agblock_t		agbno,
	unsigned int		count,
	unsigned int		inode_size,
	xfs_agblock_t		length,
	unsigned int		generation)
{
	struct xfs_icreate_item	*icp;

	icp = FUNC1(xfs_icreate_zone, 0);

	FUNC3(tp->t_mountp, &icp->ic_item, XFS_LI_ICREATE,
			  &xfs_icreate_item_ops);

	icp->ic_format.icl_type = XFS_LI_ICREATE;
	icp->ic_format.icl_size = 1;	/* single vector */
	icp->ic_format.icl_ag = FUNC0(agno);
	icp->ic_format.icl_agbno = FUNC0(agbno);
	icp->ic_format.icl_count = FUNC0(count);
	icp->ic_format.icl_isize = FUNC0(inode_size);
	icp->ic_format.icl_length = FUNC0(length);
	icp->ic_format.icl_gen = FUNC0(generation);

	FUNC4(tp, &icp->ic_item);
	tp->t_flags |= XFS_TRANS_DIRTY;
	FUNC2(XFS_LI_DIRTY, &icp->ic_item.li_flags);
}