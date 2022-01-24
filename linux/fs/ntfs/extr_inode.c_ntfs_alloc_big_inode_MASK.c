#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {scalar_t__ state; } ;
typedef  TYPE_1__ ntfs_inode ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 struct inode* FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ntfs_big_inode_cache ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,char*) ; 

struct inode *FUNC5(struct super_block *sb)
{
	ntfs_inode *ni;

	FUNC3("Entering.");
	ni = FUNC1(ntfs_big_inode_cache, GFP_NOFS);
	if (FUNC2(ni != NULL)) {
		ni->state = 0;
		return FUNC0(ni);
	}
	FUNC4(sb, "Allocation of NTFS big inode structure failed.");
	return NULL;
}