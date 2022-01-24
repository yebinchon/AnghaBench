#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_super {int /*<<< orphan*/  dev_str; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_sb; } ;
struct ocfs2_inode_info {int ip_dyn_features; scalar_t__ ip_clusters; scalar_t__ ip_blkno; TYPE_1__ vfs_inode; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_cpos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int OCFS2_INLINE_DATA_FL ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 struct ocfs2_inode_info* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_super*) ; 

__attribute__((used)) static int FUNC6(struct ocfs2_extent_tree *et,
				     struct ocfs2_extent_rec *rec)
{
	struct ocfs2_inode_info *oi = FUNC2(et->et_ci);
	struct ocfs2_super *osb = FUNC1(oi->vfs_inode.i_sb);

	FUNC0(oi->ip_dyn_features & OCFS2_INLINE_DATA_FL);
	FUNC4(!FUNC5(osb) &&
			(oi->ip_clusters != FUNC3(rec->e_cpos)),
			"Device %s, asking for sparse allocation: inode %llu, "
			"cpos %u, clusters %u\n",
			osb->dev_str,
			(unsigned long long)oi->ip_blkno,
			rec->e_cpos, oi->ip_clusters);

	return 0;
}