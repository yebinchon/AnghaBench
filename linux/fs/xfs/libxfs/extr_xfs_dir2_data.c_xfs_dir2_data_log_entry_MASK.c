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
typedef  int /*<<< orphan*/  xfs_dir2_data_entry_t ;
typedef  int /*<<< orphan*/  uint ;
struct xfs_dir2_data_hdr {scalar_t__ magic; } ;
struct xfs_da_args {TYPE_2__* dp; int /*<<< orphan*/  trans; } ;
struct xfs_buf {struct xfs_dir2_data_hdr* b_addr; } ;
struct TYPE_4__ {TYPE_1__* d_ops; } ;
struct TYPE_3__ {scalar_t__ (* data_entry_tag_p ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_DIR2_BLOCK_MAGIC ; 
 int /*<<< orphan*/  XFS_DIR2_DATA_MAGIC ; 
 int /*<<< orphan*/  XFS_DIR3_BLOCK_MAGIC ; 
 int /*<<< orphan*/  XFS_DIR3_DATA_MAGIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct xfs_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(
	struct xfs_da_args	*args,
	struct xfs_buf		*bp,
	xfs_dir2_data_entry_t	*dep)		/* data entry pointer */
{
	struct xfs_dir2_data_hdr *hdr = bp->b_addr;

	FUNC0(hdr->magic == FUNC1(XFS_DIR2_DATA_MAGIC) ||
	       hdr->magic == FUNC1(XFS_DIR3_DATA_MAGIC) ||
	       hdr->magic == FUNC1(XFS_DIR2_BLOCK_MAGIC) ||
	       hdr->magic == FUNC1(XFS_DIR3_BLOCK_MAGIC));

	FUNC3(args->trans, bp, (uint)((char *)dep - (char *)hdr),
		(uint)((char *)(args->dp->d_ops->data_entry_tag_p(dep) + 1) -
		       (char *)hdr - 1));
}