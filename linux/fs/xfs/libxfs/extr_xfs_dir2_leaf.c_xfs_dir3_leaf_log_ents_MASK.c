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
struct xfs_dir2_leaf_entry {int dummy; } ;
typedef  struct xfs_dir2_leaf_entry xfs_dir2_leaf_entry_t ;
typedef  int /*<<< orphan*/  uint ;
struct TYPE_5__ {scalar_t__ magic; } ;
struct TYPE_6__ {TYPE_1__ info; } ;
struct xfs_dir2_leaf {TYPE_2__ hdr; } ;
struct xfs_da_args {int /*<<< orphan*/  trans; TYPE_4__* dp; } ;
struct xfs_buf {struct xfs_dir2_leaf* b_addr; } ;
struct TYPE_8__ {TYPE_3__* d_ops; } ;
struct TYPE_7__ {struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (struct xfs_dir2_leaf*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_DIR2_LEAF1_MAGIC ; 
 int /*<<< orphan*/  XFS_DIR2_LEAFN_MAGIC ; 
 int /*<<< orphan*/  XFS_DIR3_LEAF1_MAGIC ; 
 int /*<<< orphan*/  XFS_DIR3_LEAFN_MAGIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct xfs_dir2_leaf_entry* FUNC2 (struct xfs_dir2_leaf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct xfs_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(
	struct xfs_da_args	*args,
	struct xfs_buf		*bp,
	int			first,
	int			last)
{
	xfs_dir2_leaf_entry_t	*firstlep;	/* pointer to first entry */
	xfs_dir2_leaf_entry_t	*lastlep;	/* pointer to last entry */
	struct xfs_dir2_leaf	*leaf = bp->b_addr;
	struct xfs_dir2_leaf_entry *ents;

	FUNC0(leaf->hdr.info.magic == FUNC1(XFS_DIR2_LEAF1_MAGIC) ||
	       leaf->hdr.info.magic == FUNC1(XFS_DIR3_LEAF1_MAGIC) ||
	       leaf->hdr.info.magic == FUNC1(XFS_DIR2_LEAFN_MAGIC) ||
	       leaf->hdr.info.magic == FUNC1(XFS_DIR3_LEAFN_MAGIC));

	ents = args->dp->d_ops->leaf_ents_p(leaf);
	firstlep = &ents[first];
	lastlep = &ents[last];
	FUNC3(args->trans, bp,
		(uint)((char *)firstlep - (char *)leaf),
		(uint)((char *)lastlep - (char *)leaf + sizeof(*lastlep) - 1));
}