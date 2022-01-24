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
typedef  int /*<<< orphan*/  uint ;
struct TYPE_5__ {scalar_t__ magic; } ;
struct TYPE_6__ {TYPE_1__ info; } ;
struct xfs_dir2_leaf {TYPE_2__ hdr; } ;
struct xfs_da_args {TYPE_4__* dp; int /*<<< orphan*/  trans; } ;
struct xfs_buf {struct xfs_dir2_leaf* b_addr; } ;
struct TYPE_8__ {TYPE_3__* d_ops; } ;
struct TYPE_7__ {scalar_t__ leaf_hdr_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_DIR2_LEAF1_MAGIC ; 
 int /*<<< orphan*/  XFS_DIR2_LEAFN_MAGIC ; 
 int /*<<< orphan*/  XFS_DIR3_LEAF1_MAGIC ; 
 int /*<<< orphan*/  XFS_DIR3_LEAFN_MAGIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct xfs_buf*,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC3(
	struct xfs_da_args	*args,
	struct xfs_buf		*bp)
{
	struct xfs_dir2_leaf	*leaf = bp->b_addr;

	FUNC0(leaf->hdr.info.magic == FUNC1(XFS_DIR2_LEAF1_MAGIC) ||
	       leaf->hdr.info.magic == FUNC1(XFS_DIR3_LEAF1_MAGIC) ||
	       leaf->hdr.info.magic == FUNC1(XFS_DIR2_LEAFN_MAGIC) ||
	       leaf->hdr.info.magic == FUNC1(XFS_DIR3_LEAFN_MAGIC));

	FUNC2(args->trans, bp,
			  (uint)((char *)&leaf->hdr - (char *)leaf),
			  args->dp->d_ops->leaf_hdr_size - 1);
}