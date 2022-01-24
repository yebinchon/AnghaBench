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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode vfs_inode; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ocfs2_extent_tree *et,
					     u32 clusters)
{
	struct inode *inode = &FUNC0(et->et_ci)->vfs_inode;

	FUNC1(inode, clusters);
}