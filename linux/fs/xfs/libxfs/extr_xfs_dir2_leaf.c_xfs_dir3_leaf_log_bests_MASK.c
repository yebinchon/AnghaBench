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
typedef  int /*<<< orphan*/  xfs_dir2_leaf_tail_t ;
typedef  int /*<<< orphan*/  uint ;
struct TYPE_3__ {scalar_t__ magic; } ;
struct TYPE_4__ {TYPE_1__ info; } ;
struct xfs_dir2_leaf {TYPE_2__ hdr; } ;
struct xfs_da_args {int /*<<< orphan*/  trans; int /*<<< orphan*/  geo; } ;
struct xfs_buf {struct xfs_dir2_leaf* b_addr; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_DIR2_LEAF1_MAGIC ; 
 int /*<<< orphan*/  XFS_DIR3_LEAF1_MAGIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,struct xfs_dir2_leaf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct xfs_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(
	struct xfs_da_args	*args,
	struct xfs_buf		*bp,		/* leaf buffer */
	int			first,		/* first entry to log */
	int			last)		/* last entry to log */
{
	__be16			*firstb;	/* pointer to first entry */
	__be16			*lastb;		/* pointer to last entry */
	struct xfs_dir2_leaf	*leaf = bp->b_addr;
	xfs_dir2_leaf_tail_t	*ltp;		/* leaf tail structure */

	FUNC0(leaf->hdr.info.magic == FUNC1(XFS_DIR2_LEAF1_MAGIC) ||
	       leaf->hdr.info.magic == FUNC1(XFS_DIR3_LEAF1_MAGIC));

	ltp = FUNC3(args->geo, leaf);
	firstb = FUNC2(ltp) + first;
	lastb = FUNC2(ltp) + last;
	FUNC4(args->trans, bp,
		(uint)((char *)firstb - (char *)leaf),
		(uint)((char *)lastb - (char *)leaf + sizeof(*lastb) - 1));
}